<?php

namespace App\Filament\Resources\ArticleNews;

use App\Filament\Resources\ArticleNews\Pages\CreateArticleNews;
use App\Filament\Resources\ArticleNews\Pages\EditArticleNews;
use App\Filament\Resources\ArticleNews\Pages\ListArticleNews;
use App\Filament\Resources\ArticleNews\Schemas\ArticleNewsForm;
use App\Filament\Resources\ArticleNews\Tables\ArticleNewsTable;
use App\Models\ArticleNews;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Forms;

//Tambahan
use App\Filament\Resources\BannerAdvertismentResource\Pages;
use App\Filament\Resources\BannerAdvertismentResource\RelationManagers;
use App\Models\BannerAdvertisment;
use Filament\Forms\Form;
use Filament\Tables;
use App\Filament\Resources\BannerAdvertisments\Pages\CreateBannerAdvertisment;
use App\Filament\Resources\BannerAdvertisment\Pages\EditBannerAdvertisment;
use App\Filament\Resources\BannerAdvertisment\Pages\ListBannerAdvertisments;
use App\Filament\Resources\BannerAdvertisments\Pages\EditBannerAdvertisment as PagesEditBannerAdvertisment;
use App\Filament\Resources\BannerAdvertisments\Pages\ListBannerAdvertisments as PagesListBannerAdvertisments;
use App\Filament\Resources\BannerAdvertisments\Tables\BannerAdvertismentsTable;

class ArticleNewsResource extends Resource
{
    protected static ?string $model = ArticleNews::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    public static function form(Schema $schema): Schema
    {
        return $schema
            ->schema([
                //
                Forms\Components\TextInput::make('name')
                ->required()
                ->maxLength(255),

                Forms\Components\RichEditor::make('content')
                ->required()
                ->toolbarButtons([
                    'attachFiles',
                    'blockquote',
                    'bold',
                    'bulletList',
                    'codeBlock',
                    'h2',
                    'h3',
                    'italic',
                    'link',
                    'orderedList',
                    'redo',
                    'strike',
                    'underline',
                    'undo',
                ])
                ->columnSpanFull(),

                Forms\Components\Select::make('author_id')
                ->relationship('author', 'name')
                ->searchable()
                ->preload()
                ->required(),

                Forms\Components\FileUpload::make('thumbnail')
                ->image()
                ->required(),

                Forms\Components\Select::make('is_featured')
                ->options([
                    'featured' => 'Featured',
                    'not_featured' => 'Not Featured',
                ])
                ->required(),

                Forms\Components\Select::make('category_id')
                ->relationship('category', 'name')
                ->searchable()
                ->preload()
                ->required(),
            ]);
    }



    public static function table(Table $table): Table
    {
        return ArticleNewsTable::configure($table)
        ->columns([
            Tables\Columns\TextColumn::make('name')
            ->searchable(),

            Tables\Columns\TextColumn::make('is_featured')
            ->badge()
            ->color(fn (string $state):string=>match($state){
                'featured' => 'success',
                'not_featured' => 'danger',
                }),


            Tables\Columns\TextColumn::make('category.name'),
            Tables\Columns\ImageColumn::make('thumbnail'),
        ])
        ->filters([
            //
        ])
        
        
        ;
    }




    
    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => ListArticleNews::route('/'),
            'create' => CreateArticleNews::route('/create'),
            'edit' => EditArticleNews::route('/{record}/edit'),
        ];
    }

    public static function getRecordRouteBindingEloquentQuery(): Builder
    {
        return parent::getRecordRouteBindingEloquentQuery()
            ->withoutGlobalScopes([
                SoftDeletingScope::class,
            ]);
    }
}
