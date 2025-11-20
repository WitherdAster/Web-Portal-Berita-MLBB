<?php

namespace App\Filament\Resources\BannerAdvertisments;

use App\Filament\Resources\BannerAdvertismentResource\Pages;
use App\Filament\Resources\BannerAdvertismentResource\RelationManagers;
use App\Models\BannerAdvertisment;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Filament\Support\Icons\Heroicon;
use BackedEnum;
use App\Filament\Resources\BannerAdvertisments\Pages\CreateBannerAdvertisment;
use App\Filament\Resources\BannerAdvertisment\Pages\EditBannerAdvertisment;
use App\Filament\Resources\BannerAdvertisment\Pages\ListBannerAdvertisments;
use App\Filament\Resources\BannerAdvertisments\Pages\EditBannerAdvertisment as PagesEditBannerAdvertisment;
use App\Filament\Resources\BannerAdvertisments\Pages\ListBannerAdvertisments as PagesListBannerAdvertisments;
use App\Filament\Resources\BannerAdvertisments\Tables\BannerAdvertismentsTable;

class BannerAdvertismentResource extends Resource
{
    protected static ?string $model = BannerAdvertisment::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    public static function form(Schema $schema): Schema
    {
        return $schema
            ->schema([
                //
                Forms\Components\TextInput::make('link')
                ->activeUrl()
                ->required()
                ->maxLength(255),

                Forms\Components\FileUpload::make('thumbnail')
                ->image()
                ->required(),

                Forms\Components\Select::make('is_active')
                ->options([
                    'active' => 'Active',
                    'not_active' => 'Not Active',
                ]),

                Forms\Components\Select::make('type')
                ->options([
                    'banner' => 'Banner',
                    'square' => 'Square',
                ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return BannerAdvertismentsTable::configure($table)
            ->columns([
                //
                Tables\Columns\TextColumn::make('link')
                ->searchable(),
                Tables\Columns\TextColumn::make('type'),
                Tables\Columns\TextColumn::make('is_active'),
                Tables\Columns\ImageColumn::make('thumbnail'),
            ])
            ->filters([
                //
            ]);
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
            'index' => PagesListBannerAdvertisments::route('/'),
            'create' => CreateBannerAdvertisment::route('/create'),
            'edit' => PagesEditBannerAdvertisment::route('/{record}/edit'),
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
