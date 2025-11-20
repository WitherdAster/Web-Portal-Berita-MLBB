@extends('front.master')
@section('content')

	<body class="font-[Poppins]">
		<x-navbar/>
		
		<section id="heading" class="max-w-[1130px] mx-auto flex items-center flex-col gap-[30px] mt-[30px]">
			<h1 class="text-4xl leading-[45px] font-bold text-center">
				Explore Hot Trending <br />
				Good News Today
			</h1>
			
		</section>
		<section id="search-result" class="max-w-[1130px] mx-auto flex items-start flex-col gap-[30px] mt-[70px] mb-[100px]">
			<h2 class="text-[26px] leading-[39px] font-bold">Search Result: <span>{{ ucfirst($keyword) }}</span></h2>
			<div id="search-cards" class="grid grid-cols-3 gap-[30px]">
                @forelse ($articles as $article)
                <a href="{{ route('front.details', $article->slug) }}" class="card">
                    <div
                        class="flex flex-col gap-4 p-[26px_20px] transition-all duration-300 ring-1 ring-[#EEF0F7] hover:ring-2 hover:ring-[#FF6B18] rounded-[20px] overflow-hidden bg-white">
                        <div class="thumbnail-container h-[200px] relative rounded-[20px] overflow-hidden">
                            <div
                                class="badge absolute left-5 top-5 bottom-auto right-auto flex p-[8px_18px] bg-white rounded-[50px]">
                                {{-- uppercase agar huruf besar semua --}}
                                <p class="text-xs leading-[18px] font-bold uppercase">{{ $article->category->name }}</p>
                            </div>
                            <img src="{{ route('private.file',$article->thumbnail) }}" alt="thumbnail photo"
                                class="object-cover w-full h-full" />
                        </div>
                        <div class="flex flex-col gap-[6px]">
                            <h3 class="text-lg leading-[27px] font-bold">
                                {{ substr($article->name, 0, 55) }}{{ strlen($article->name) > 55 ? '...':''}}
                            </h3>
                            <p class="text-sm leading-[21px] text-[#A3A6AE]">
                                {{ $article->created_at->format('M d, Y') }}
                            </p>
                        </div>
                    </div>
                </a>
                @empty
                    <p>belum ada artikel dengan keyword tersebut</p>
                @endforelse
		</section>
	</body>
@endsection
