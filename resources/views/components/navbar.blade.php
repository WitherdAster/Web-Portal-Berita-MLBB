<nav id="Navbar" class="max-w-[1130px] mx-auto flex justify-center items-center mt-[30px] flex-wrap gap-4 md:flex-row pb-10"> 
<!-- tikas sini malam tadi -->
    <div class="flex-wrap justify-center sm:logo-container flex gap-[30px] items-center">
        <a href="{{ route('front.index') }}" class="mt-5 transform scale-[150%] mb-10 sm:scale-[100%] flex shrink-0 sm:mb-0 sm:mt-0">
        <div class="img-conteiner w-10 h-10">
            <img src="{{ asset('assets/images/logos/logo ges.png') }}" alt="logo" />
        </div>
        </a>
        <div class=" hidden sm:block h-12 border border-[#E8EBF4]"></div>
        <form method="GET" action="{{ route('front.search') }}"
            class="mt-[-5px] w-[450px] flex items-center rounded-full border border-[#E8EBF4] p-[12px_20px] gap-[10px] focus-within:ring-2
            focus-within:ring-[#0379F4] transition-all duration-300">

            @csrf

            <button type="submit" class="flex w-5 h-5 shrink-0">
                <img src="{{ asset('assets/images/icons/search-normal.svg') }}" alt="icon" />
            </button>
            <input type="text" name="keyword" id=""
                class="appearance-none outline-none w-full font-semibold placeholder:font-normal placeholder:text-[#A3A6AE]"
                placeholder="Search hot trendy news today..." />
        </form>
    </div>
    <div class="flex items-center gap-3">
        <a href=""
            class="rounded-full p-[12px_22px] flex gap-[10px] font-semibold transition-all duration-300 border border-[#EEF0F7] hover:ring-2 hover:ring-[#0379F4]">Upgrade
            Pro</a>
        <a href=""
            class="rounded-full p-[12px_22px] flex gap-[10px] font-bold transition-all duration-300 bg-[#0379F4] text-white hover:shadow-[0_10px_20px_0_#0379F480]">
            <div class="flex w-6 h-6 shrink-0">
                <img src="{{ asset('assets/images/icons/favorite-chart.svg') }}" alt="icon" />
            </div>
            <span>Post Ads</span>
        </a>
    </div>
</nav>