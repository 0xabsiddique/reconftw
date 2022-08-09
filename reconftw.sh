#!/usr/bin/env bash

function banner(){
	printf "\n${bgreen}"
	printf "  ██▀███  ▓█████  ▄████▄   ▒█████   ███▄    █   █████▒▄▄▄█████▓ █     █░\n"
	printf " ▓██ ▒ ██▒▓█   ▀ ▒██▀ ▀█  ▒██▒  ██▒ ██ ▀█   █ ▓██   ▒ ▓  ██▒ ▓▒▓█░ █ ░█░\n"
	printf " ▓██ ░▄█ ▒▒███   ▒▓█    ▄ ▒██░  ██▒▓██  ▀█ ██▒▒████ ░ ▒ ▓██░ ▒░▒█░ █ ░█ \n"
	printf " ▒██▀▀█▄  ▒▓█  ▄ ▒▓▓▄ ▄██▒▒██   ██░▓██▒  ▐▌██▒░▓█▒  ░ ░ ▓██▓ ░ ░█░ █ ░█ \n"
	printf " ░██▓ ▒██▒░▒████▒▒ ▓███▀ ░░ ████▓▒░▒██░   ▓██░░▒█░      ▒██▒ ░ ░░██▒██▓ \n"
	printf " ░ ▒▓ ░▒▓░░░ ▒░ ░░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒░   ▒ ▒  ▒ ░      ▒ ░░   ░ ▓░▒ ▒  \n"
	printf "   ░▒ ░ ▒░ ░ ░  ░  ░  ▒     ░ ▒ ▒░ ░ ░░   ░ ▒░ ░          ░      ▒ ░ ░  \n"
	printf "   ░░   ░    ░   ░        ░ ░ ░ ▒     ░   ░ ░  ░ ░      ░        ░   ░  \n"
	printf "    ░        ░  ░░ ░          ░ ░           ░                      ░    \n"
	printf "                 ░                                                      \n"
	printf " ${reconftw_version}                                 by @six2dez${reset}\n"
}

###############################################################################################################
################################################### TOOLS #####################################################
###############################################################################################################

function tools_installed(){

	printf "\n\n${bgreen}#######################################################################${reset}\n"
	printf "${bblue} Checking installed tools ${reset}\n\n"

	allinstalled=true

	[ -n "$GOPATH" ] || { printf "${bred} [*] GOPATH var		[NO]${reset}\n"; allinstalled=false;}
	[ -n "$GOROOT" ] || { printf "${bred} [*] GOROOT var		[NO]${reset}\n"; allinstalled=false;}
	[ -n "$PATH" ] || { printf "${bred} [*] PATH var		[NO]${reset}\n"; allinstalled=false;}
	[ -f "$tools/dorks_hunter/dorks_hunter.py" ] || { printf "${bred} [*] dorks_hunter	[NO]${reset}\n"; allinstalled=false;}
	[ -f "$tools/brutespray/brutespray.py" ] || { printf "${bred} [*] brutespray		[NO]${reset}\n"; allinstalled=false;}
	[ -f "$tools/theHarvester/theHarvester.py" ] || { printf "${bred} [*] theHarvester	[NO]${reset}\n"; allinstalled=false;}
	[ -f "$tools/fav-up/favUp.py" ] || { printf "${bred} [*] fav-up		[NO]${reset}\n"; allinstalled=false;}
	[ -f "$tools/Corsy/corsy.py" ] || { printf "${bred} [*] Corsy		[NO]${reset}\n"; allinstalled=false;}
	[ -f "$tools/testssl.sh/testssl.sh" ] || { printf "${bred} [*] testssl		[NO]${reset}\n"; allinstalled=false;}
	[ -f "$tools/CMSeeK/cmseek.py" ] || { printf "${bred} [*] CMSeeK		[NO]${reset}\n"; allinstalled=false;}
	[ -f "$tools/ctfr/ctfr.py" ] || { printf "${bred} [*] ctfr		[NO]${reset}\n"; allinstalled=false;}
	[ -f "$tools/fuzz_wordlist.txt" ] || { printf "${bred} [*] OneListForAll	[NO]${reset}\n"; allinstalled=false;}
	[ -f "$tools/xnLinkFinder/xnLinkFinder.py" ] || { printf "${bred} [*] xnLinkFinder	[NO]${reset}\n"; allinstalled=false;}
	[ -f "$tools/commix/commix.py" ] || { printf "${bred} [*] commix		[NO]${reset}\n"; allinstalled=false;}
	[ -f "$tools/getjswords.py" ] || { printf "${bred} [*] getjswords   	[NO]${reset}\n"; allinstalled=false;}
	[ -f "$tools/JSA/jsa.py" ] || { printf "${bred} [*] JSA		[NO]${reset}\n"; allinstalled=false;}
	[ -f "$tools/cloud_enum/cloud_enum.py" ] || { printf "${bred} [*] cloud_enum		[NO]${reset}\n"; allinstalled=false;}
	[ -f "$tools/ultimate-nmap-parser/ultimate-nmap-parser.sh" ] || { printf "${bred} [*] nmap-parse-output	[NO]${reset}\n"; allinstalled=false;}
	[ -f "$tools/pydictor/pydictor.py" ] || { printf "${bred} [*] pydictor   	[NO]${reset}\n"; allinstalled=false;}
	which github-endpoints &>/dev/null || { printf "${bred} [*] github-endpoints	[NO]${reset}\n"; allinstalled=false;}
	which github-subdomains &>/dev/null || { printf "${bred} [*] github-subdomains	[NO]${reset}\n"; allinstalled=false;}
	which gospider &>/dev/null || { printf "${bred} [*] gospider		[NO]${reset}\n"; allinstalled=false;}
	which aquatone &>/dev/null || { printf "${bred} [*] aquatone		[NO]${reset}\n"; allinstalled=false;}
	which wafw00f &>/dev/null || { printf "${bred} [*] wafw00f		[NO]${reset}\n"; allinstalled=false;}
	which dnsvalidator &>/dev/null || { printf "${bred} [*] dnsvalidator	[NO]${reset}\n"; allinstalled=false;}
	which gowitness &>/dev/null || { printf "${bred} [*] gowitness		[NO]${reset}\n"; allinstalled=false;}
	which amass &>/dev/null || { printf "${bred} [*] Amass		[NO]${reset}\n"; allinstalled=false;}
	which waybackurls &>/dev/null || { printf "${bred} [*] Waybackurls	[NO]${reset}\n"; allinstalled=false;}
	which gau &>/dev/null || { printf "${bred} [*] gau		[NO]${reset}\n"; allinstalled=false;}
	which dnsx &>/dev/null || { printf "${bred} [*] dnsx		[NO]${reset}\n"; allinstalled=false;}
	which gotator &>/dev/null || { printf "${bred} [*] gotator		[NO]${reset}\n"; allinstalled=false;}
	which nuclei &>/dev/null || { printf "${bred} [*] Nuclei		[NO]${reset}\n"; allinstalled=false;}
	[ -d ~/nuclei-templates ] || { printf "${bred} [*] Nuclei templates	[NO]${reset}\n"; allinstalled=false;}
	which gf &>/dev/null || { printf "${bred} [*] Gf			[NO]${reset}\n"; allinstalled=false;}
	which Gxss &>/dev/null || { printf "${bred} [*] Gxss		[NO]${reset}\n"; allinstalled=false;}
	which subjs &>/dev/null || { printf "${bred} [*] subjs		[NO]${reset}\n"; allinstalled=false;}
	which ffuf &>/dev/null || { printf "${bred} [*] ffuf		[NO]${reset}\n"; allinstalled=false;}
	which massdns &>/dev/null || { printf "${bred} [*] Massdns		[NO]${reset}\n"; allinstalled=false;}
	which qsreplace &>/dev/null || { printf "${bred} [*] qsreplace		[NO]${reset}\n"; allinstalled=false;}
	which interlace &>/dev/null || { printf "${bred} [*] interlace		[NO]${reset}\n"; allinstalled=false;}
	which anew &>/dev/null || { printf "${bred} [*] Anew		[NO]${reset}\n"; allinstalled=false;}
	which unfurl &>/dev/null || { printf "${bred} [*] unfurl		[NO]${reset}\n"; allinstalled=false;}
	which crlfuzz &>/dev/null || { printf "${bred} [*] crlfuzz		[NO]${reset}\n"; allinstalled=false;}
	which httpx &>/dev/null || { printf "${bred} [*] Httpx		[NO]${reset}\n${reset}"; allinstalled=false;}
	which jq &>/dev/null || { printf "${bred} [*] jq			[NO]${reset}\n${reset}"; allinstalled=false;}
	which notify &>/dev/null || { printf "${bred} [*] notify		[NO]${reset}\n${reset}"; allinstalled=false;}
	which dalfox &>/dev/null || { printf "${bred} [*] dalfox		[NO]${reset}\n${reset}"; allinstalled=false;}
	which puredns &>/dev/null || { printf "${bred} [*] puredns		[NO]${reset}\n${reset}"; allinstalled=false;}
	which unimap &>/dev/null || { printf "${bred} [*] unimap		[NO]${reset}\n${reset}"; allinstalled=false;}
	which emailfinder &>/dev/null || { printf "${bred} [*] emailfinder	[NO]${reset}\n"; allinstalled=false;}
	which analyticsrelationships &>/dev/null || { printf "${bred} [*] analyticsrelationships	[NO]${reset}\n"; allinstalled=false;}
	which mapcidr &>/dev/null || { printf "${bred} [*] mapcidr		[NO]${reset}\n"; allinstalled=false;}
	which ppfuzz &>/dev/null || { printf "${bred} [*] ppfuzz		[NO]${reset}\n"; allinstalled=false;}
	which searchsploit &>/dev/null || { printf "${bred} [*] searchsploit	[NO]${reset}\n"; allinstalled=false;}
	which ipcdn &>/dev/null || { printf "${bred} [*] ipcdn		[NO]${reset}\n"; allinstalled=false;}
	which interactsh-client &>/dev/null || { printf "${bred} [*] interactsh-client	[NO]${reset}\n"; allinstalled=false;}
	which uro &>/dev/null || { printf "${bred} [*] uro		[NO]${reset}\n"; allinstalled=false;}
	which tlsx &>/dev/null || { printf "${bred} [*] tlsx		[NO]${reset}\n"; allinstalled=false;}
	which bbrf &>/dev/null || { printf "${bred} [*] bbrf		[NO]${reset}\n"; allinstalled=false;}
	which smap &>/dev/null || { printf "${bred} [*] smap		[NO]${reset}\n"; allinstalled=false;}
	which gitdorks_go &>/dev/null || { printf "${bred} [*] gitdorks_go	[NO]${reset}\n"; allinstalled=false;}
	which ripgen &>/dev/null || { printf "${bred} [*] ripgen		[NO]${reset}\n${reset}"; allinstalled=false;}
	which dsieve &>/dev/null || { printf "${bred} [*] dsieve		[NO]${reset}\n${reset}"; allinstalled=false;}

	if [ "${allinstalled}" = true ]; then
		printf "${bgreen} Good! All installed! ${reset}\n\n"
	else
		printf "\n${yellow} Try running the installer script again ./install.sh"
		printf "\n${yellow} If it fails for any reason try to install manually the tools missed"
		printf "\n${yellow} Finally remember to set the ${bred}\$tools${yellow} variable at the start of this script"
		printf "\n${yellow} If nothing works and the world is gonna end you can always ping me :D ${reset}\n\n"
	fi

	printf "${bblue} Tools check finished\n"
	printf "${bgreen}#######################################################################\n${reset}"
}



###############################################################################################################
############################################### SUBDOMAINS ####################################################
###############################################################################################################

function subdomains_full(){
	NUMOFLINES_subs="0"
	NUMOFLINES_probed="0"
	printf "${bgreen}#######################################################################\n\n"
	! [[ $domain =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9] ]] && printf "${bblue} Subdomain Enumeration $domain\n\n"
	[[ $domain =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9] ]] && printf "${bblue} Scanning IP $domain\n\n"
	[ -s "subdomains/subdomains.txt" ] && cp subdomains/subdomains.txt .tmp/subdomains_old.txt
	[ -s "webs/webs.txt" ] && cp webs/webs.txt .tmp/probed_old.txt

	if ( [ ! -f "$called_fn_dir/.sub_active" ] || [ ! -f "$called_fn_dir/.sub_brute" ] || [ ! -f "$called_fn_dir/.sub_permut" ] || [ ! -f "$called_fn_dir/.sub_recursive_brute" ] )  || [ "$DIFF" = true ] ; then
		resolvers_update
	fi

	[ -s "${inScope_file}" ] && cat ${inScope_file} | anew -q subdomains/subdomains.txt

	if ! [[ $domain =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9] ]] && [ "$SUBDOMAINS_GENERAL" = true ]; then
		sub_passive
		sub_crt
		sub_active
		sub_brute
		sub_permut
		sub_recursive_passive
		sub_recursive_brute
		sub_dns
		sub_scraping
		sub_analytics
	else 
		notification "IP/CIDR detected, subdomains search skipped" info
		echo $domain | anew -q subdomains/subdomains.txt
	fi

	if [ "$BBRF_CONNECTION" = true ]; then
		[ -s "subdomains/subdomains.txt" ] && cat subdomains/subdomains.txt | bbrf domain add - 2>>"$LOGFILE" &>/dev/null
	fi

	webprobe_simple
	if [ -s "subdomains/subdomains.txt" ]; then
		deleteOutScoped $outOfScope_file subdomains/subdomains.txt
		NUMOFLINES_subs=$(cat subdomains/subdomains.txt 2>>"$LOGFILE" | anew .tmp/subdomains_old.txt | sed '/^$/d' | wc -l)
	fi
	if [ -s "webs/webs.txt" ]; then
		deleteOutScoped $outOfScope_file webs/webs.txt
		NUMOFLINES_probed=$(cat webs/webs.txt 2>>"$LOGFILE" | anew .tmp/probed_old.txt | sed '/^$/d' | wc -l)
	fi
	printf "${bblue}\n Total subdomains: ${reset}\n\n"
	notification "- ${NUMOFLINES_subs} alive" good
	[ -s "subdomains/subdomains.txt" ] && cat subdomains/subdomains.txt | sort
	notification "- ${NUMOFLINES_probed} new web probed" good
	[ -s "webs/webs.txt" ] && cat webs/webs.txt | sort
	notification "Subdomain Enumeration Finished" good
	printf "${bblue} Results are saved in $domain/subdomains/subdomains.txt and webs/webs.txt${reset}\n"
	printf "${bgreen}#######################################################################\n\n"
}

function sub_passive(){
	if { [ ! -f "$called_fn_dir/.${FUNCNAME[0]}" ] || [ "$DIFF" = true ]; } && [ "$SUBPASSIVE" = true ]; then
		start_subfunc ${FUNCNAME[0]} "Running : Passive Subdomain Enumeration"
		if [ ! "$AXIOM" = true ]; then
			amass enum -passive -d $domain -config $AMASS_CONFIG -timeout $AMASS_ENUM_TIMEOUT -json .tmp/amass_json.json 2>>"$LOGFILE" &>/dev/null
			[ -s ".tmp/amass_json.json" ] && cat .tmp/amass_json.json | jq -r '.name' | anew -q .tmp/amass_psub.txt
		else
			echo $domain > .tmp/amass_temp_axiom.txt
			[ -s ".tmp/amass_temp_axiom.txt" ] && axiom-scan .tmp/amass_temp_axiom.txt -m amass -passive -o .tmp/amass_axiom.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
			[ -s ".tmp/amass_axiom.txt" ] && cat .tmp/amass_axiom.txt | anew -q .tmp/amass_psub.txt
		fi
		if [ -s "${GITHUB_TOKENS}" ]; then
			if [ "$DEEP" = true ]; then
				github-subdomains -d $domain -t $GITHUB_TOKENS -o .tmp/github_subdomains_psub.txt 2>>"$LOGFILE" &>/dev/null
			else
				github-subdomains -d $domain -k -q -t $GITHUB_TOKENS -o .tmp/github_subdomains_psub.txt 2>>"$LOGFILE" &>/dev/null
			fi
		fi
		NUMOFLINES=$(find .tmp -type f -iname "*_psub.txt" -exec cat {} + | sed "s/*.//" | anew .tmp/passive_subs.txt | sed '/^$/d' | wc -l)
		end_subfunc "${NUMOFLINES} new subs (passive)" ${FUNCNAME[0]}
	else
		if [ "$SUBPASSIVE" = false ]; then
			printf "\n${yellow} ${FUNCNAME[0]} skipped in this mode or defined in reconftw.cfg ${reset}\n"
		else
			printf "${yellow} ${FUNCNAME[0]} is already processed, to force executing ${FUNCNAME[0]} delete\n    $called_fn_dir/.${FUNCNAME[0]} ${reset}\n\n"
		fi
	fi
}

function sub_crt(){
	if { [ ! -f "$called_fn_dir/.${FUNCNAME[0]}" ] || [ "$DIFF" = true ]; } && [ "$SUBCRT" = true ]; then
		start_subfunc ${FUNCNAME[0]} "Running : Crtsh Subdomain Enumeration"
		python3 $tools/ctfr/ctfr.py -d $domain -o .tmp/crtsh_subs_tmp.txt 2>>"$LOGFILE" &>/dev/null
		NUMOFLINES=$(cat .tmp/crtsh_subs_tmp.txt 2>>"$LOGFILE" | sed 's/\*.//g' | anew .tmp/crtsh_subs.txt | sed '/^$/d' | wc -l)
		end_subfunc "${NUMOFLINES} new subs (cert transparency)" ${FUNCNAME[0]}
	else
		if [ "$SUBCRT" = false ]; then
			printf "\n${yellow} ${FUNCNAME[0]} skipped in this mode or defined in reconftw.cfg ${reset}\n"
		else
			printf "${yellow} ${FUNCNAME[0]} is already processed, to force executing ${FUNCNAME[0]} delete\n    $called_fn_dir/.${FUNCNAME[0]} ${reset}\n\n"
		fi
	fi
}

function sub_active(){
	if [ ! -f "$called_fn_dir/.${FUNCNAME[0]}" ] || [ "$DIFF" = true ]; then
		start_subfunc ${FUNCNAME[0]} "Running : Active Subdomain Enumeration"
		find .tmp -type f -iname "*_subs.txt" -exec cat {} + | anew -q .tmp/subs_no_resolved.txt
		deleteOutScoped $outOfScope_file .tmp/subs_no_resolved.txt
		if [ ! "$AXIOM" = true ]; then
			resolvers_update_quick_local
			[ -s ".tmp/subs_no_resolved.txt" ] && puredns resolve .tmp/subs_no_resolved.txt -w .tmp/subdomains_tmp.txt -r $resolvers --resolvers-trusted $resolvers_trusted -l $PUREDNS_PUBLIC_LIMIT --rate-limit-trusted $PUREDNS_TRUSTED_LIMIT --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT  --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT &>/dev/null
		else
			resolvers_update_quick_axiom
			[ -s ".tmp/subs_no_resolved.txt" ] && axiom-scan .tmp/subs_no_resolved.txt -m puredns-resolve -r /home/op/lists/resolvers.txt --resolvers-trusted /home/op/lists/resolvers_trusted.txt --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT -o .tmp/subdomains_tmp.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
		fi
		echo $domain | dnsx -retry 3 -silent -r $resolvers_trusted 2>>"$LOGFILE" | anew -q .tmp/subdomains_tmp.txt
		if [ "$DEEP" = true ]; then
			cat .tmp/subdomains_tmp.txt | tlsx -san -cn -silent -ro -c $TLSX_THREADS -p $TLS_PORTS | anew -q .tmp/subdomains_tmp.txt
		else
			cat .tmp/subdomains_tmp.txt | tlsx -san -cn -silent -ro -c $TLSX_THREADS | anew -q .tmp/subdomains_tmp.txt
		fi
		NUMOFLINES=$(cat .tmp/subdomains_tmp.txt 2>>"$LOGFILE" | grep "\.$domain$\|^$domain$" | anew subdomains/subdomains.txt | sed '/^$/d' | wc -l)
		end_subfunc "${NUMOFLINES} subs DNS resolved from passive" ${FUNCNAME[0]}
	else
		printf "${yellow} ${FUNCNAME[0]} is already processed, to force executing ${FUNCNAME[0]} delete\n    $called_fn_dir/.${FUNCNAME[0]} ${reset}\n\n"
	fi
}

function sub_dns(){
	if [ ! -f "$called_fn_dir/.${FUNCNAME[0]}" ] || [ "$DIFF" = true ]; then
		start_subfunc ${FUNCNAME[0]} "Running : DNS Subdomain Enumeration and PTR search"
		if [ ! "$AXIOM" = true ]; then
			[ -s "subdomains/subdomains.txt" ] && cat subdomains/subdomains.txt | dnsx -r $resolvers_trusted -a -aaaa -cname -ns -ptr -mx -soa -silent -retry 3 -json -o subdomains/subdomains_dnsregs.json 2>>"$LOGFILE" &>/dev/null
			[ -s "subdomains/subdomains_dnsregs.json" ] && cat subdomains/subdomains_dnsregs.json | jq -r 'try .a[], try .aaaa[], try .cname[], try .ns[], try .ptr[], try .mx[], try .soa[]' 2>/dev/null | grep ".$domain$" | anew -q .tmp/subdomains_dns.txt
			[ -s "subdomains/subdomains_dnsregs.json" ] && cat subdomains/subdomains_dnsregs.json | jq -r 'try .a[]' | sort -u | dnsx -retry 3 -silent -ptr -r $resolvers_trusted -resp-only 2>/dev/null | grep ".$domain$" | anew -q .tmp/subdomains_dns.txt
			[ -s "subdomains/subdomains_dnsregs.json" ] && cat subdomains/subdomains_dnsregs.json | jq -r 'try "\(.host) - \(.a[])"' 2>/dev/null | sort -u -k2 | anew -q subdomains/subdomains_ips.txt
			resolvers_update_quick_local
			[ -s ".tmp/subdomains_dns.txt" ] && puredns resolve .tmp/subdomains_dns.txt -w .tmp/subdomains_dns_resolved.txt -r $resolvers --resolvers-trusted $resolvers_trusted -l $PUREDNS_PUBLIC_LIMIT --rate-limit-trusted $PUREDNS_TRUSTED_LIMIT --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT  --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT 2>>"$LOGFILE" &>/dev/null
		else
			[ -s "subdomains/subdomains.txt" ] && axiom-scan subdomains/subdomains.txt -m dnsx -retry 3 -a -aaaa -cname -ns -ptr -mx -soa -json -o subdomains/subdomains_dnsregs.json $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
			[ -s "subdomains/subdomains_dnsregs.json" ] && cat subdomains/subdomains_dnsregs.json | jq -r 'try .a[]' | sort -u | anew -q .tmp/subdomains_dns_a_records.txt
			[ -s ".tmp/subdomains_dns_a_records.txt" ] && axiom-scan .tmp/subdomains_dns_a_records.txt -m dnsx -retry 3 -ptr -resp-only -o .tmp/subdomains_dns_ptr_reverse.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null 
			[ -s ".tmp/subdomains_dns_ptr_reverse.txt" ] && cat .tmp/subdomains_dns_ptr_reverse.txt | grep ".$domain$" | anew -q .tmp/subdomains_dns.txt
			[ -s "subdomains/subdomains_dnsregs.json" ] && cat subdomains/subdomains_dnsregs.json | jq -r 'try .a[], try .aaaa[], try .cname[], try .ns[], try .ptr[], try .mx[], try .soa[]' 2>/dev/null | grep ".$domain$" | anew -q .tmp/subdomains_dns.txt
			[ -s "subdomains/subdomains_dnsregs.json" ] && cat subdomains/subdomains_dnsregs.json | jq -r 'try "\(.host) - \(.a[])"' 2>/dev/null | sort -u -k2 | anew -q subdomains/subdomains_ips.txt
			resolvers_update_quick_axiom
			[ -s ".tmp/subdomains_dns.txt" ] && axiom-scan .tmp/subdomains_dns.txt -m puredns-resolve -r /home/op/lists/resolvers.txt --resolvers-trusted /home/op/lists/resolvers_trusted.txt --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT -o .tmp/subdomains_dns_resolved.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
		fi

		NUMOFLINES=$(cat .tmp/subdomains_dns_resolved.txt 2>>"$LOGFILE" | grep "\.$domain$\|^$domain$" | anew subdomains/subdomains.txt | sed '/^$/d' | wc -l)
		end_subfunc "${NUMOFLINES} new subs (dns resolution)" ${FUNCNAME[0]}
	else
		printf "${yellow} ${FUNCNAME[0]} is already processed, to force executing ${FUNCNAME[0]} delete\n    $called_fn_dir/.${FUNCNAME[0]} ${reset}\n\n"
	fi
}

function sub_brute(){
	if { [ ! -f "$called_fn_dir/.${FUNCNAME[0]}" ] || [ "$DIFF" = true ]; } && [ "$SUBBRUTE" = true ]; then
		start_subfunc ${FUNCNAME[0]} "Running : Bruteforce Subdomain Enumeration"
		if [ ! "$AXIOM" = true ]; then
			resolvers_update_quick_local
			if [ "$DEEP" = true ]; then
				puredns bruteforce $subs_wordlist_big $domain -w .tmp/subs_brute.txt -r $resolvers --resolvers-trusted $resolvers_trusted -l $PUREDNS_PUBLIC_LIMIT --rate-limit-trusted $PUREDNS_TRUSTED_LIMIT --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT  --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT 2>>"$LOGFILE" &>/dev/null
			else
				puredns bruteforce $subs_wordlist $domain -w .tmp/subs_brute.txt -r $resolvers --resolvers-trusted $resolvers_trusted -l $PUREDNS_PUBLIC_LIMIT --rate-limit-trusted $PUREDNS_TRUSTED_LIMIT --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT  --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT 2>>"$LOGFILE" &>/dev/null
			fi
			[ -s ".tmp/subs_brute.txt" ] && puredns resolve .tmp/subs_brute.txt -w .tmp/subs_brute_valid.txt -r $resolvers --resolvers-trusted $resolvers_trusted -l $PUREDNS_PUBLIC_LIMIT --rate-limit-trusted $PUREDNS_TRUSTED_LIMIT --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT  --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT 2>>"$LOGFILE" &>/dev/null
		else
			resolvers_update_quick_axiom
			if [ "$DEEP" = true ]; then
				axiom-scan $subs_wordlist_big -m puredns-single $domain -r /home/op/lists/resolvers.txt --resolvers-trusted /home/op/lists/resolvers_trusted.txt --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT -o .tmp/subs_brute.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
			else
				axiom-scan $subs_wordlist -m puredns-single $domain -r /home/op/lists/resolvers.txt --resolvers-trusted /home/op/lists/resolvers_trusted.txt --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT -o .tmp/subs_brute.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
			fi
			[ -s ".tmp/subs_brute.txt" ] && axiom-scan .tmp/subs_brute.txt -m puredns-resolve -r /home/op/lists/resolvers.txt --resolvers-trusted /home/op/lists/resolvers_trusted.txt --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT -o .tmp/subs_brute_valid.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
		fi
		NUMOFLINES=$(cat .tmp/subs_brute_valid.txt 2>>"$LOGFILE" | sed "s/*.//" | grep ".$domain$" | anew subdomains/subdomains.txt | sed '/^$/d' | wc -l)
		end_subfunc "${NUMOFLINES} new subs (bruteforce)" ${FUNCNAME[0]}
	else
		if [ "$SUBBRUTE" = false ]; then
			printf "\n${yellow} ${FUNCNAME[0]} skipped in this mode or defined in reconftw.cfg ${reset}\n"
		else
			printf "${yellow} ${FUNCNAME[0]} is already processed, to force executing ${FUNCNAME[0]} delete\n    $called_fn_dir/.${FUNCNAME[0]} ${reset}\n\n"
		fi
	fi
}

function sub_scraping(){
	if { [ ! -f "$called_fn_dir/.${FUNCNAME[0]}" ] || [ "$DIFF" = true ]; } && [ "$SUBSCRAPING" = true ]; then
		start_subfunc ${FUNCNAME[0]} "Running : Source code scraping subdomain search"
		touch .tmp/scrap_subs.txt
		if [ -s "$dir/subdomains/subdomains.txt" ]; then
			if [[ $(cat subdomains/subdomains.txt | wc -l) -le $DEEP_LIMIT ]] || [ "$DEEP" = true ] ; then
				if [ ! "$AXIOM" = true ]; then
					resolvers_update_quick_local
					cat subdomains/subdomains.txt | httpx -follow-host-redirects -H "${HEADER}" -status-code -threads $HTTPX_THREADS -rl $HTTPX_RATELIMIT -timeout $HTTPX_TIMEOUT -silent -retries 2 -title -web-server -tech-detect -location -no-color -json -o .tmp/web_full_info1.txt 2>>"$LOGFILE" &>/dev/null
					[ -s ".tmp/web_full_info1.txt" ] && cat .tmp/web_full_info1.txt | jq -r 'try .url' 2>/dev/null | grep "$domain" | sed "s/*.//" | anew .tmp/probed_tmp_scrap.txt | unfurl -u domains 2>>"$LOGFILE" | anew -q .tmp/scrap_subs.txt
					[ -s ".tmp/probed_tmp_scrap.txt" ] && cat .tmp/probed_tmp_scrap.txt | httpx -tls-grab -tls-probe -csp-probe -H "${HEADER}" -status-code -threads $HTTPX_THREADS -rl $HTTPX_RATELIMIT -timeout $HTTPX_TIMEOUT -silent -retries 2 -title -web-server -tech-detect -location -no-color -json -o .tmp/web_full_info2.txt 2>>"$LOGFILE" &>/dev/null
					[ -s ".tmp/web_full_info2.txt" ] && cat .tmp/web_full_info2.txt | jq -r 'try ."tls-grab"."dns_names"[],try .csp.domains[],try .url' 2>/dev/null | grep "$domain" | sed "s/*.//" | sort -u | httpx -silent | anew .tmp/probed_tmp_scrap.txt | unfurl -u domains 2>>"$LOGFILE" | anew -q .tmp/scrap_subs.txt

					if [ "$DEEP" = true ]; then
						[ -s ".tmp/probed_tmp_scrap.txt" ] && gospider -S .tmp/probed_tmp_scrap.txt --js -t $GOSPIDER_THREADS -d 3 --sitemap --robots -w -r > .tmp/gospider.txt
					else
						[ -s ".tmp/probed_tmp_scrap.txt" ] && gospider -S .tmp/probed_tmp_scrap.txt --js -t $GOSPIDER_THREADS -d 2 --sitemap --robots -w -r > .tmp/gospider.txt
					fi
					sed -i '/^.\{2048\}./d' .tmp/gospider.txt
					[ -s ".tmp/gospider.txt" ] && cat .tmp/gospider.txt | grep -aEo 'https?://[^ ]+' | sed 's/]$//' | unfurl -u domains 2>>"$LOGFILE" | grep ".$domain$" | anew -q .tmp/scrap_subs.txt
					[ -s ".tmp/scrap_subs.txt" ] && puredns resolve .tmp/scrap_subs.txt -w .tmp/scrap_subs_resolved.txt -r $resolvers --resolvers-trusted $resolvers_trusted -l $PUREDNS_PUBLIC_LIMIT --rate-limit-trusted $PUREDNS_TRUSTED_LIMIT --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT  --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT 2>>"$LOGFILE" &>/dev/null
					NUMOFLINES=$(cat .tmp/scrap_subs_resolved.txt 2>>"$LOGFILE" | grep "\.$domain$\|^$domain$" | anew subdomains/subdomains.txt | tee .tmp/diff_scrap.txt | sed '/^$/d' | wc -l)
					[ -s ".tmp/diff_scrap.txt" ] && cat .tmp/diff_scrap.txt | httpx -follow-host-redirects -H "${HEADER}" -status-code -threads $HTTPX_THREADS -rl $HTTPX_RATELIMIT -timeout $HTTPX_TIMEOUT -silent -retries 2 -title -web-server -tech-detect -location -no-color -json -o .tmp/web_full_info3.txt 2>>"$LOGFILE" &>/dev/null
				else
					resolvers_update_quick_axiom
					axiom-scan subdomains/subdomains.txt -m httpx -follow-host-redirects -H \"${HEADER}\" -status-code -threads $HTTPX_THREADS -rl $HTTPX_RATELIMIT -timeout $HTTPX_TIMEOUT -silent -retries 2 -title -web-server -tech-detect -location -no-color -json -o .tmp/web_full_info1.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
					[ -s ".tmp/web_full_info1.txt" ] && cat .tmp/web_full_info1.txt | jq -r 'try .url' 2>/dev/null | grep "$domain" | sed "s/*.//" | anew .tmp/probed_tmp_scrap.txt | unfurl -u domains 2>>"$LOGFILE" | anew -q .tmp/scrap_subs.txt
					[ -s ".tmp/probed_tmp_scrap.txt" ] && axiom-scan .tmp/probed_tmp_scrap.txt -m httpx -tls-grab -tls-probe -csp-probe -H \"${HEADER}\" -status-code -threads $HTTPX_THREADS -rl $HTTPX_RATELIMIT -timeout $HTTPX_TIMEOUT -silent -retries 2 -title -web-server -tech-detect -location -no-color -json -o .tmp/web_full_info2.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
					[ -s ".tmp/web_full_info2.txt" ] && cat .tmp/web_full_info2.txt | jq -r 'try ."tls-grab"."dns_names"[],try .csp.domains[],try .url' 2>/dev/null | grep "$domain" | sed "s/*.//" | sort -u | httpx -silent | anew .tmp/probed_tmp_scrap.txt | unfurl -u domains 2>>"$LOGFILE" | anew -q .tmp/scrap_subs.txt
					if [ "$DEEP" = true ]; then
						[ -s ".tmp/probed_tmp_scrap.txt" ] && axiom-scan .tmp/probed_tmp_scrap.txt -m gospider --js -d 3 --sitemap --robots -w -r -o .tmp/gospider $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
					else
						[ -s ".tmp/probed_tmp_scrap.txt" ] && axiom-scan .tmp/probed_tmp_scrap.txt -m gospider --js -d 2 --sitemap --robots -w -r -o .tmp/gospider $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
					fi
					NUMFILES=0
					touch .tmp/gospider.txt
					[[ -d .tmp/gospider/ ]] && NUMFILES=$(find .tmp/gospider/ -type f | wc -l)
					[[ $NUMFILES -gt 0 ]] && find .tmp/gospider/ -type f -exec cat {} + | sed '/^.\{2048\}./d' | anew -q .tmp/gospider.txt
					[ -s ".tmp/gospider.txt" ] && cat .tmp/gospider.txt | grep -aEo 'https?://[^ ]+' | sed 's/]$//' | unfurl -u domains 2>>"$LOGFILE" | grep ".$domain$" | anew -q .tmp/scrap_subs.txt
					[ -s ".tmp/scrap_subs.txt" ] && axiom-scan .tmp/scrap_subs.txt -m puredns-resolve -r /home/op/lists/resolvers.txt --resolvers-trusted /home/op/lists/resolvers_trusted.txt --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT -o .tmp/scrap_subs_resolved.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
					NUMOFLINES=$(cat .tmp/scrap_subs_resolved.txt 2>>"$LOGFILE" | grep "\.$domain$\|^$domain$" | anew subdomains/subdomains.txt | tee .tmp/diff_scrap.txt | sed '/^$/d' | wc -l)
					[ -s ".tmp/diff_scrap.txt" ] && axiom-scan .tmp/diff_scrap.txt -m httpx -follow-host-redirects -H \"${HEADER}\" -status-code -threads $HTTPX_THREADS -rl $HTTPX_RATELIMIT -timeout $HTTPX_TIMEOUT -silent -retries 2 -title -web-server -tech-detect -location -no-color -json -o .tmp/web_full_info3.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
				fi
				[ -s ".tmp/web_full_info3.txt" ] && cat .tmp/web_full_info3.txt | jq -r 'try .url' 2>/dev/null | grep "$domain" | sed "s/*.//" | anew .tmp/probed_tmp_scrap.txt | unfurl -u domains 2>>"$LOGFILE" | anew -q .tmp/scrap_subs.txt
				cat .tmp/web_full_info1.txt .tmp/web_full_info2.txt .tmp/web_full_info3.txt 2>>"$LOGFILE" | jq -s 'try .' | jq 'try unique_by(.input)' | jq 'try .[]' 2>>"$LOGFILE" > .tmp/web_full_info.txt
				end_subfunc "${NUMOFLINES} new subs (code scraping)" ${FUNCNAME[0]}
			else
				end_subfunc "Skipping Subdomains Web Scraping: Too Many Subdomains" ${FUNCNAME[0]}
			fi
		else
			end_subfunc "No subdomains to search (code scraping)" ${FUNCNAME[0]}
		fi
	else
		if [ "$SUBSCRAPING" = false ]; then
			printf "\n${yellow} ${FUNCNAME[0]} skipped in this mode or defined in reconftw.cfg ${reset}\n"
		else
			printf "${yellow} ${FUNCNAME[0]} is already processed, to force executing ${FUNCNAME[0]} delete\n    $called_fn_dir/.${FUNCNAME[0]} ${reset}\n\n"
		fi
	fi
}

function sub_analytics(){
	if { [ ! -f "$called_fn_dir/.${FUNCNAME[0]}" ] || [ "$DIFF" = true ]; } && [ "$SUBANALYTICS" = true ]; then
		start_subfunc ${FUNCNAME[0]} "Running : Analytics Subdomain Enumeration"
		if [ -s ".tmp/probed_tmp_scrap.txt" ]; then
			mkdir -p .tmp/output_analytics/
			cat .tmp/probed_tmp_scrap.txt | analyticsrelationships -ch >> .tmp/analytics_subs_tmp.txt 2>>"$LOGFILE" &>/dev/null
			[ -s ".tmp/analytics_subs_tmp.txt" ] && cat .tmp/analytics_subs_tmp.txt | grep "\.$domain$\|^$domain$" | sed "s/|__ //" | anew -q .tmp/analytics_subs_clean.txt
			if [ ! "$AXIOM" = true ]; then
				resolvers_update_quick_local
				[ -s ".tmp/analytics_subs_clean.txt" ] && puredns resolve .tmp/analytics_subs_clean.txt -w .tmp/analytics_subs_resolved.txt -r $resolvers --resolvers-trusted $resolvers_trusted -l $PUREDNS_PUBLIC_LIMIT --rate-limit-trusted $PUREDNS_TRUSTED_LIMIT --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT  --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT 2>>"$LOGFILE" &>/dev/null
			else
				resolvers_update_quick_axiom
				[ -s ".tmp/analytics_subs_clean.txt" ] && axiom-scan .tmp/analytics_subs_clean.txt -m puredns-resolve -r /home/op/lists/resolvers.txt --resolvers-trusted /home/op/lists/resolvers_trusted.txt --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT -o .tmp/analytics_subs_resolved.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
			fi
		fi
		NUMOFLINES=$(cat .tmp/analytics_subs_resolved.txt 2>>"$LOGFILE" | anew subdomains/subdomains.txt | sed '/^$/d' | wc -l)
		end_subfunc "${NUMOFLINES} new subs (analytics relationship)" ${FUNCNAME[0]}
	else
		if [ "$SUBANALYTICS" = false ]; then
			printf "\n${yellow} ${FUNCNAME[0]} skipped in this mode or defined in reconftw.cfg ${reset}\n"
		else
			printf "${yellow} ${FUNCNAME[0]} is already processed, to force executing ${FUNCNAME[0]} delete\n    $called_fn_dir/.${FUNCNAME[0]} ${reset}\n\n"
		fi
	fi
}

function sub_permut(){
	if { [ ! -f "$called_fn_dir/.${FUNCNAME[0]}" ] || [ "$DIFF" = true ]; } && [ "$SUBPERMUTE" = true ]; then
		start_subfunc ${FUNCNAME[0]} "Running : Permutations Subdomain Enumeration"
		if [ "$DEEP" = true ] || [ "$(cat subdomains/subdomains.txt | wc -l)" -le $DEEP_LIMIT ] ; then
			if [ "$PERMUTATIONS_OPTION" = "gotator" ] ; then
				[ -s "subdomains/subdomains.txt" ] && $GOTATOR_TIMEOUT gotator -sub subdomains/subdomains.txt -perm $tools/permutations_list.txt -depth 1 -numbers 10 -mindup -adv -md -silent 2>>"$LOGFILE" > .tmp/gotator1.txt
			else
				[ -s "subdomains/subdomains.txt" ] && $GOTATOR_TIMEOUT ripgen -d subdomains/subdomains.txt -w $tools/permutations_list.txt 2>>"$LOGFILE" > .tmp/gotator1.txt
			fi
		elif [ "$(cat .tmp/subs_no_resolved.txt | wc -l)" -le $DEEP_LIMIT2 ]; then
			if [ "$PERMUTATIONS_OPTION" = "gotator" ] ; then
				[ -s ".tmp/subs_no_resolved.txt" ] && $GOTATOR_TIMEOUT gotator -sub .tmp/subs_no_resolved.txt -perm $tools/permutations_list.txt -depth 1 -numbers 10 -mindup -adv -md -silent 2>>"$LOGFILE" > .tmp/gotator1.txt
			else
				[ -s ".tmp/subs_no_resolved.txt" ] && $GOTATOR_TIMEOUT ripgen -d .tmp/subs_no_resolved.txt -w $tools/permutations_list.txt 2>>"$LOGFILE" > .tmp/gotator1.txt
			fi
		else
			end_subfunc "Skipping Permutations: Too Many Subdomains" ${FUNCNAME[0]}
			return 1
		fi
		if [ ! "$AXIOM" = true ]; then
			resolvers_update_quick_local
			[ -s ".tmp/gotator1.txt" ] && puredns resolve .tmp/gotator1.txt -w .tmp/permute1.txt -r $resolvers --resolvers-trusted $resolvers_trusted -l $PUREDNS_PUBLIC_LIMIT --rate-limit-trusted $PUREDNS_TRUSTED_LIMIT --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT  --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT 2>>"$LOGFILE" &>/dev/null
		else
			resolvers_update_quick_axiom
			[ -s ".tmp/gotator1.txt" ] && axiom-scan .tmp/gotator1.txt -m puredns-resolve -r /home/op/lists/resolvers.txt --resolvers-trusted /home/op/lists/resolvers_trusted.txt --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT -o .tmp/permute1.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
		fi
		
		if [ "$PERMUTATIONS_OPTION" = "gotator" ] ; then
			[ -s ".tmp/permute1.txt" ] && $GOTATOR_TIMEOUT gotator -sub .tmp/permute1.txt -perm $tools/permutations_list.txt -depth 1 -numbers 10 -mindup -adv -md -silent 2>>"$LOGFILE" > .tmp/gotator2.txt
		else
			[ -s ".tmp/permute1.txt" ] && $GOTATOR_TIMEOUT ripgen -d .tmp/permute1.txt -w $tools/permutations_list.txt 2>>"$LOGFILE" > .tmp/gotator2.txt
		fi

		if [ ! "$AXIOM" = true ]; then
			[ -s ".tmp/gotator2.txt" ] && puredns resolve .tmp/gotator2.txt -w .tmp/permute2.txt -r $resolvers --resolvers-trusted $resolvers_trusted -l $PUREDNS_PUBLIC_LIMIT --rate-limit-trusted $PUREDNS_TRUSTED_LIMIT --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT  --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT 2>>"$LOGFILE" &>/dev/null
		else
			[ -s ".tmp/gotator2.txt" ] && axiom-scan .tmp/gotator2.txt -m puredns-resolve -r /home/op/lists/resolvers.txt --resolvers-trusted /home/op/lists/resolvers_trusted.txt --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT -o .tmp/permute2.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
		fi
		cat .tmp/permute1.txt .tmp/permute2.txt 2>>"$LOGFILE" | anew -q .tmp/permute_subs.txt

		if [ -s ".tmp/permute_subs.txt" ]; then
			deleteOutScoped $outOfScope_file .tmp/permute_subs.txt
			NUMOFLINES=$(cat .tmp/permute_subs.txt 2>>"$LOGFILE" | grep ".$domain$" | anew subdomains/subdomains.txt | sed '/^$/d' | wc -l)
		else
			NUMOFLINES=0
		fi
		end_subfunc "${NUMOFLINES} new subs (permutations)" ${FUNCNAME[0]}
	else
		if [ "$SUBPERMUTE" = false ]; then
			printf "\n${yellow} ${FUNCNAME[0]} skipped in this mode or defined in reconftw.cfg ${reset}\n"
		else
			printf "${yellow} ${FUNCNAME[0]} is already processed, to force executing ${FUNCNAME[0]} delete\n    $called_fn_dir/.${FUNCNAME[0]} ${reset}\n\n"
		fi
	fi
}

function sub_recursive_passive(){
	if { [ ! -f "$called_fn_dir/.${FUNCNAME[0]}" ] || [ "$DIFF" = true ]; } && [ "$SUB_RECURSIVE_PASSIVE" = true ] && [ -s "subdomains/subdomains.txt" ]; then
		start_subfunc ${FUNCNAME[0]} "Running : Subdomains recursive search passive"
		# Passive recursive
		[ -s "subdomains/subdomains.txt" ] && dsieve -if subdomains/subdomains.txt -f 3 -top $DEEP_RECURSIVE_PASSIVE > .tmp/subdomains_recurs_top.txt
		if [ ! "$AXIOM" = true ]; then
			resolvers_update_quick_local
			[ -s ".tmp/subdomains_recurs_top.txt" ] && amass enum -passive -df .tmp/subdomains_recurs_top.txt -nf subdomains/subdomains.txt -config $AMASS_CONFIG -timeout $AMASS_ENUM_TIMEOUT 2>>"$LOGFILE" | anew -q .tmp/passive_recursive.txt
			[ -s ".tmp/passive_recursive.txt" ] && puredns resolve .tmp/passive_recursive.txt -w .tmp/passive_recurs_tmp.txt -r $resolvers --resolvers-trusted $resolvers_trusted -l $PUREDNS_PUBLIC_LIMIT --rate-limit-trusted $PUREDNS_TRUSTED_LIMIT --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT  --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT 2>>"$LOGFILE" &>/dev/null
		else
			resolvers_update_quick_axiom
			[ -s ".tmp/subdomains_recurs_top.txt" ] && axiom-scan .tmp/subdomains_recurs_top.txt -m amass -passive -o .tmp/amass_prec.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
			[ -s ".tmp/amass_prec.txt" ] &&  cat .tmp/amass_prec.txt | anew -q .tmp/passive_recursive.txt
			[ -s ".tmp/passive_recursive.txt" ] && axiom-scan .tmp/passive_recursive.txt -m puredns-resolve -r /home/op/lists/resolvers.txt --resolvers-trusted /home/op/lists/resolvers_trusted.txt --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT -o .tmp/passive_recurs_tmp.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
		fi
		NUMOFLINES=$(cat .tmp/passive_recurs_tmp.txt 2>>"$LOGFILE" | grep "\.$domain$\|^$domain$" | sed '/^$/d' | anew subdomains/subdomains.txt | wc -l)
		end_subfunc "${NUMOFLINES} new subs (recursive)" ${FUNCNAME[0]}
	else
		if [ "$SUB_RECURSIVE_PASSIVE" = false ]; then
			printf "\n${yellow} ${FUNCNAME[0]} skipped in this mode or defined in reconftw.cfg ${reset}\n"
		else
			printf "${yellow} ${FUNCNAME[0]} is already processed, to force executing ${FUNCNAME[0]} delete\n    $called_fn_dir/.${FUNCNAME[0]} ${reset}\n\n"
		fi
	fi
}

function sub_recursive_brute(){
	if { [ ! -f "$called_fn_dir/.${FUNCNAME[0]}" ] || [ "$DIFF" = true ]; } && [ "$SUB_RECURSIVE_BRUTE" = true ] && [ -s "subdomains/subdomains.txt" ]; then
		start_subfunc ${FUNCNAME[0]} "Running : Subdomains recursive search active"
		if [[ $(cat subdomains/subdomains.txt | wc -l) -le $DEEP_LIMIT ]] ; then
			[ ! -s ".tmp/subdomains_recurs_top.txt" ] && dsieve -if subdomains/subdomains.txt -f 3 -top $DEEP_RECURSIVE_PASSIVE > .tmp/subdomains_recurs_top.txt
			ripgen -d .tmp/subdomains_recurs_top.txt -w $subs_wordlist > .tmp/brute_recursive_wordlist.txt
			if [ ! "$AXIOM" = true ]; then
				resolvers_update_quick_local
				[ -s ".tmp/brute_recursive_wordlist.txt" ] && puredns resolve .tmp/brute_recursive_wordlist.txt -r $resolvers --resolvers-trusted $resolvers_trusted -l $PUREDNS_PUBLIC_LIMIT --rate-limit-trusted $PUREDNS_TRUSTED_LIMIT --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT  --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT -w .tmp/brute_recursive_result.txt 2>>"$LOGFILE" &>/dev/null
			else
				resolvers_update_quick_axiom
				[ -s ".tmp/brute_recursive_wordlist.txt" ] && axiom-scan .tmp/brute_recursive_wordlist.txt -m puredns-resolve -r /home/op/lists/resolvers.txt --resolvers-trusted /home/op/lists/resolvers_trusted.txt --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT -o .tmp/brute_recursive_result.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
			fi
			[ -s ".tmp/brute_recursive_result.txt" ] && cat .tmp/brute_recursive_result.txt | anew -q .tmp/brute_recursive.txt

			if [ "$PERMUTATIONS_OPTION" = "gotator" ] ; then
				[ -s ".tmp/brute_recursive.txt" ] && $GOTATOR_TIMEOUT gotator -sub .tmp/brute_recursive.txt -perm $tools/permutations_list.txt -depth 1 -numbers 10 -mindup -adv -md -silent 2>>"$LOGFILE" > .tmp/gotator1_recursive.txt
			else
				[ -s ".tmp/brute_recursive.txt" ] && $GOTATOR_TIMEOUT ripgen -d .tmp/brute_recursive.txt -w $tools/permutations_list.txt 2>>"$LOGFILE" > .tmp/gotator1_recursive.txt
			fi
			
			if [ ! "$AXIOM" = true ]; then
				[ -s ".tmp/gotator1_recursive.txt" ] && puredns resolve .tmp/gotator1_recursive.txt -w .tmp/permute1_recursive.txt -r $resolvers --resolvers-trusted $resolvers_trusted -l $PUREDNS_PUBLIC_LIMIT --rate-limit-trusted $PUREDNS_TRUSTED_LIMIT --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT  --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT 2>>"$LOGFILE" &>/dev/null
			else
				[ -s ".tmp/gotator1_recursive.txt" ] && axiom-scan .tmp/gotator1_recursive.txt -m puredns-resolve -r /home/op/lists/resolvers.txt --resolvers-trusted /home/op/lists/resolvers_trusted.txt --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT -o .tmp/permute1_recursive.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
			fi

			if [ "$PERMUTATIONS_OPTION" = "gotator" ] ; then
				[ -s ".tmp/permute1_recursive.txt" ] && $GOTATOR_TIMEOUT gotator -sub .tmp/permute1_recursive.txt -perm $tools/permutations_list.txt -depth 1 -numbers 10 -mindup -adv -md -silent 2>>"$LOGFILE" > .tmp/gotator2_recursive.txt
			else
				[ -s ".tmp/permute1_recursive.txt" ] && $GOTATOR_TIMEOUT ripgen -d .tmp/permute1_recursive.txt -w $tools/permutations_list.txt 2>>"$LOGFILE" > .tmp/gotator2_recursive.txt
			fi
			
			if [ ! "$AXIOM" = true ]; then
			[ -s ".tmp/gotator2_recursive.txt" ] && puredns resolve .tmp/gotator2_recursive.txt -w .tmp/permute2_recursive.txt -r $resolvers --resolvers-trusted $resolvers_trusted -l $PUREDNS_PUBLIC_LIMIT --rate-limit-trusted $PUREDNS_TRUSTED_LIMIT --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT  --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT 2>>"$LOGFILE" &>/dev/null
			else
				[ -s ".tmp/gotator2_recursive.txt" ] && axiom-scan .tmp/gotator2_recursive.txt -m puredns-resolve -r /home/op/lists/resolvers.txt --resolvers-trusted /home/op/lists/resolvers_trusted.txt --wildcard-tests $PUREDNS_WILDCARDTEST_LIMIT --wildcard-batch $PUREDNS_WILDCARDBATCH_LIMIT -o .tmp/permute2_recursive.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
			fi
			cat .tmp/permute1_recursive.txt .tmp/permute2_recursive.txt 2>>"$LOGFILE" | anew -q .tmp/permute_recursive.txt
		else
			end_subfunc "skipped in this mode or defined in reconftw.cfg" ${FUNCNAME[0]}
		fi
		NUMOFLINES=$(cat .tmp/permute_recursive.txt .tmp/brute_recursive.txt 2>>"$LOGFILE" | grep "\.$domain$\|^$domain$" | sed '/^$/d' | anew subdomains/subdomains.txt | wc -l)
		end_subfunc "${NUMOFLINES} new subs (recursive)" ${FUNCNAME[0]}
	else
		if [ "$SUB_RECURSIVE_BRUTE" = false ]; then
			printf "\n${yellow} ${FUNCNAME[0]} skipped in this mode or defined in reconftw.cfg ${reset}\n"
		else
			printf "${yellow} ${FUNCNAME[0]} is already processed, to force executing ${FUNCNAME[0]} delete\n    $called_fn_dir/.${FUNCNAME[0]} ${reset}\n\n"
		fi
	fi
}




###############################################################################################################
########################################### Port scan + vhost ################################################
###############################################################################################################

function webprobe_simple(){
	if { [ ! -f "$called_fn_dir/.${FUNCNAME[0]}" ] || [ "$DIFF" = true ]; } && [ "$WEBPROBESIMPLE" = true ]; then
		start_subfunc ${FUNCNAME[0]} "Running : Http probing $domain"
		if [ ! "$AXIOM" = true ]; then
			cat subdomains/subdomains.txt | httpx ${HTTPX_FLAGS} -no-color -json -H "${HEADER}" -threads $HTTPX_THREADS -rl $HTTPX_RATELIMIT -retries 2 -timeout $HTTPX_TIMEOUT -o .tmp/web_full_info_probe.txt 2>>"$LOGFILE" &>/dev/null
		else
			axiom-scan subdomains/subdomains.txt -m httpx ${HTTPX_FLAGS} -no-color -json -H \"${HEADER}\" -threads $HTTPX_THREADS -rl $HTTPX_RATELIMIT -retries 2 -timeout $HTTPX_TIMEOUT -o .tmp/web_full_info_probe.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
		fi
		cat .tmp/web_full_info.txt .tmp/web_full_info_probe.txt webs/web_full_info.txt 2>>"$LOGFILE" | jq -s 'try .' | jq 'try unique_by(.input)' | jq 'try .[]' 2>>"$LOGFILE" > webs/web_full_info.txt
		cat webs/web_full_info.txt | jq -r 'try .url' 2>/dev/null | grep "$domain" | sed "s/*.//" | anew -q .tmp/probed_tmp.txt
		deleteOutScoped $outOfScope_file .tmp/probed_tmp.txt
		NUMOFLINES=$(cat .tmp/probed_tmp.txt 2>>"$LOGFILE" | anew webs/webs.txt | sed '/^$/d' | wc -l)
		cat webs/webs.txt webs/webs_uncommon_ports.txt 2>/dev/null | anew -q .tmp/webs_all.txt
		end_subfunc "${NUMOFLINES} new websites resolved" ${FUNCNAME[0]}
		if [ "$PROXY" = true ] && [ -n "$proxy_url" ] && [[ $(cat webs/webs.txt| wc -l) -le $DEEP_LIMIT2 ]]; then
			notification "Sending websites to proxy" info
			ffuf -mc all -w webs/webs.txt -u FUZZ -replay-proxy $proxy_url 2>>"$LOGFILE" &>/dev/null
		fi
		if [ "$BBRF_CONNECTION" = true ]; then
			[ -s "webs/webs.txt" ] && cat webs/webs.txt | bbrf url add - 2>>"$LOGFILE" &>/dev/null
		fi
	else
		if [ "$WEBPROBESIMPLE" = false ]; then
			printf "\n${yellow} ${FUNCNAME[0]} skipped in this mode or defined in reconftw.cfg ${reset}\n"
		else
			printf "${yellow} ${FUNCNAME[0]} is already processed, to force executing ${FUNCNAME[0]} delete\n    $called_fn_dir/.${FUNCNAME[0]} ${reset}\n\n"
		fi
	fi
}


function webprobe_full(){
	if { [ ! -f "$called_fn_dir/.${FUNCNAME[0]}" ] || [ "$DIFF" = true ]; } && [ "$WEBPROBEFULL" = true ]; then
		start_func ${FUNCNAME[0]} "Http probing non standard ports"
		if [ -s "subdomains/subdomains.txt" ]; then
			if [[ $domain =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9] ]]; then
				$SUDO nmap -iL subdomains/subdomains.txt -p $UNCOMMON_PORTS_WEB -oG .tmp/uncommon_nmap.gnmap 2>>"$LOGFILE" &>/dev/null
				cat .tmp/uncommon_nmap.gnmap | egrep -v "^#|Status: Up" | cut -d' ' -f2,4- | grep "open" | sed -e 's/\/.*$//g' | sed -e "s/ /:/g" | sort -u | anew -q .tmp/nmap_uncommonweb.txt
			else
				if [ ! "$AXIOM" = true ]; then
					$SUDO unimap --fast-scan -f subdomains/subdomains.txt --ports $UNCOMMON_PORTS_WEB -q -k --url-output 2>>"$LOGFILE" | anew -q .tmp/nmap_uncommonweb.txt
				else
					axiom-scan subdomains/subdomains.txt -m unimap --fast-scan --ports $UNCOMMON_PORTS_WEB -q -k --url-output -o .tmp/nmap_uncommonweb.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
				fi
			fi
		fi
		if [ ! "$AXIOM" = true ]; then
			if [ -s ".tmp/nmap_uncommonweb.txt" ]; then
				cat .tmp/nmap_uncommonweb.txt | httpx -follow-host-redirects -H "${HEADER}" -status-code -threads $HTTPX_UNCOMMONPORTS_THREADS -timeout $HTTPX_UNCOMMONPORTS_TIMEOUT -silent -retries 2 -title -web-server -tech-detect -location -no-color -json -o .tmp/web_full_info_uncommon.txt 2>>"$LOGFILE" &>/dev/null
				[ -s ".tmp/web_full_info_uncommon.txt" ] && cat .tmp/web_full_info_uncommon.txt | jq -r 'try .url' 2>/dev/null | grep "$domain" | sed "s/*.//" | anew -q .tmp/probed_uncommon_ports_tmp.txt
			fi
		else
			if [ -s ".tmp/nmap_uncommonweb.txt" ]; then
				axiom-scan .tmp/nmap_uncommonweb.txt -m httpx -follow-host-redirects -H \"${HEADER}\" -status-code -threads $HTTPX_UNCOMMONPORTS_THREADS -timeout $HTTPX_UNCOMMONPORTS_TIMEOUT -silent -retries 2 -title -web-server -tech-detect -location -no-color -json -o .tmp/web_full_info_uncommon.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
				[ -s ".tmp/web_full_info_uncommon.txt" ] && cat .tmp/web_full_info_uncommon.txt | jq -r 'try .url' 2>/dev/null | grep "$domain" | sed "s/*.//" | anew -q .tmp/probed_uncommon_ports_tmp.txt
			fi
		fi
		if [ -s ".tmp/web_full_info_uncommon.txt" ]; then
			if [[ $domain =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9] ]]; then 
				cat .tmp/web_full_info_uncommon.txt 2>>"$LOGFILE" | anew -q webs/web_full_info_uncommon.txt
			else
				cat .tmp/web_full_info_uncommon.txt 2>>"$LOGFILE" | grep "$domain" | anew -q webs/web_full_info_uncommon.txt
			fi
		fi
		NUMOFLINES=$(cat .tmp/probed_uncommon_ports_tmp.txt 2>>"$LOGFILE" | anew webs/webs_uncommon_ports.txt | sed '/^$/d' | wc -l)
		notification "Uncommon web ports: ${NUMOFLINES} new websites" good
		[ -s "webs/webs_uncommon_ports.txt" ] && cat webs/webs_uncommon_ports.txt
		cat webs/webs.txt webs/webs_uncommon_ports.txt 2>/dev/null | anew -q .tmp/webs_all.txt
		rm -rf "unimap_logs" 2>>"$LOGFILE"
		end_func "Results are saved in $domain/webs/webs_uncommon_ports.txt" ${FUNCNAME[0]}
		if [ "$PROXY" = true ] && [ -n "$proxy_url" ] && [[ $(cat webs/webs_uncommon_ports.txt| wc -l) -le $DEEP_LIMIT2 ]]; then
			notification "Sending websites with uncommon ports to proxy" info
			ffuf -mc all -w webs/webs_uncommon_ports.txt -u FUZZ -replay-proxy $proxy_url 2>>"$LOGFILE" &>/dev/null
		fi
		if [ "$BBRF_CONNECTION" = true ]; then
			[ -s "webs/webs_uncommon_ports.txt" ] && cat webs/webs_uncommon_ports.txt | bbrf url add - 2>>"$LOGFILE" &>/dev/null
		fi
	else
		if [ "$WEBPROBEFULL" = false ]; then
			printf "\n${yellow} ${FUNCNAME[0]} skipped in this mode or defined in reconftw.cfg ${reset}\n"
		else
			printf "${yellow} ${FUNCNAME[0]} is already processed, to force executing ${FUNCNAME[0]} delete\n    $called_fn_dir/.${FUNCNAME[0]} ${reset}\n\n"
		fi
	fi
}

function virtualhosts(){
	if { [ ! -f "$called_fn_dir/.${FUNCNAME[0]}" ] || [ "$DIFF" = true ]; } && [ "$VIRTUALHOSTS" = true ]; then
		start_func ${FUNCNAME[0]} "Virtual Hosts dicovery"
		[ ! -s ".tmp/webs_all.txt" ] && cat webs/webs.txt webs/webs_uncommon_ports.txt 2>/dev/null | anew -q .tmp/webs_all.txt
		if [ -s ".tmp/webs_all.txt" ]; then
			mkdir -p $dir/virtualhosts $dir/.tmp/virtualhosts
			interlace -tL .tmp/webs_all.txt -threads ${INTERLACE_THREADS} -c "ffuf -ac -t ${FFUF_THREADS} -rate ${FFUF_RATELIMIT} -H \"${HEADER}\" -H \"Host: FUZZ._cleantarget_\" -w ${fuzz_wordlist} -maxtime ${FFUF_MAXTIME} -u  _target_ -of json -o _output_/_cleantarget_.json" -o $dir/.tmp/virtualhosts 2>>"$LOGFILE" &>/dev/null
			for sub in $(cat .tmp/webs_all.txt); do
				sub_out=$(echo $sub | sed -e 's|^[^/]*//||' -e 's|/.*$||')
				[ -s "$dir/.tmp/virtualhosts/${sub_out}.json" ] && cat $dir/.tmp/virtualhosts/${sub_out}.json | jq -r 'try .results[] | "\(.status) \(.length) \(.url)"' | sort | anew -q $dir/virtualhosts/${sub_out}.txt
			done
			find $dir/virtualhosts/ -type f -iname "*.txt" -exec cat {} + 2>>"$LOGFILE" | anew -q $dir/virtualhosts/virtualhosts_full.txt
			end_func "Results are saved in $domain/virtualhosts/*subdomain*.txt" ${FUNCNAME[0]}
		else
			end_func "No $domain/web/webs.txts file found, fuzzing skipped " ${FUNCNAME[0]}
		fi
	else
		if [ "$VIRTUALHOSTS" = false ]; then
			printf "\n${yellow} ${FUNCNAME[0]} skipped in this mode or defined in reconftw.cfg ${reset}\n"
		else
			printf "${yellow} ${FUNCNAME[0]} is already processed, to force executing ${FUNCNAME[0]} delete\n    $called_fn_dir/.${FUNCNAME[0]} ${reset}\n\n"
		fi
	fi
}


###############################################################################################################
########################################### screenshot + dir fuzzing  ########################################
###############################################################################################################

function screenshot(){
	if { [ ! -f "$called_fn_dir/.${FUNCNAME[0]}" ] || [ "$DIFF" = true ]; } && [ "$WEBSCREENSHOT" = true ]; then
		start_func ${FUNCNAME[0]} "Web Screenshots"
		[ ! -s ".tmp/webs_all.txt" ] && cat webs/webs.txt webs/webs_uncommon_ports.txt 2>/dev/null | anew -q .tmp/webs_all.txt
		if [ ! "$AXIOM" = true ]; then
			#[ -s ".tmp/webs_all.txt" ] && webscreenshot -i .tmp/webs_all.txt -w $WEBSCREENSHOT_THREADS -o screenshots 2>>"$LOGFILE" &>/dev/null
			#[ -s ".tmp/webs_all.txt" ] && gowitness file -f .tmp/webs_all.txt -t $GOWITNESS_THREADS --disable-logging 2>>"$LOGFILE"
			[ -s ".tmp/webs_all.txt" ] && cat .tmp/webs_all.txt | aquatone -http-timeout 10000 -scan-timeout 300 -out screenshots -threads $auquatoneThreads -silent 2>>"$LOGFILE"
		else
			[ "$AXIOM_SCREENSHOT_MODULE" = "webscreenshot" ] && axiom-scan .tmp/webs_all.txt -m $AXIOM_SCREENSHOT_MODULE -w $WEBSCREENSHOT_THREADS -o screenshots $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
			[ "$AXIOM_SCREENSHOT_MODULE" != "webscreenshot" ] && axiom-scan .tmp/webs_all.txt -m $AXIOM_SCREENSHOT_MODULE -o screenshots $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
		fi
		end_func "Results are saved in $domain/screenshots folder" ${FUNCNAME[0]}
	else
		if [ "$WEBSCREENSHOT" = false ]; then
			printf "\n${yellow} ${FUNCNAME[0]} skipped in this mode or defined in reconftw.cfg ${reset}\n"
		else
			printf "${yellow} ${FUNCNAME[0]} is already processed, to force executing ${FUNCNAME[0]} delete\n    $called_fn_dir/.${FUNCNAME[0]} ${reset}\n\n"
		fi
	fi
}


function fuzz(){
	if { [ ! -f "$called_fn_dir/.${FUNCNAME[0]}" ] || [ "$DIFF" = true ]; } && [ "$FUZZ" = true ]; then
		start_func ${FUNCNAME[0]} "Web directory fuzzing"
		[ ! -s ".tmp/webs_all.txt" ] && cat webs/webs.txt webs/webs_uncommon_ports.txt 2>/dev/null | anew -q .tmp/webs_all.txt
		if [ -s ".tmp/webs_all.txt" ]; then
			mkdir -p $dir/fuzzing $dir/.tmp/fuzzing
			if [ ! "$AXIOM" = true ]; then
				interlace -tL .tmp/webs_all.txt -threads ${INTERLACE_THREADS} -c "ffuf ${FFUF_FLAGS} -t ${FFUF_THREADS} -rate ${FFUF_RATELIMIT} -H \"${HEADER}\" -w ${fuzz_wordlist} -maxtime ${FFUF_MAXTIME} -u  _target_/FUZZ -of json -o _output_/_cleantarget_.json" -o $dir/.tmp/fuzzing 2>>"$LOGFILE" &>/dev/null
				for sub in $(cat .tmp/webs_all.txt); do
					sub_out=$(echo $sub | sed -e 's|^[^/]*//||' -e 's|/.*$||')
					[ -s "$dir/.tmp/fuzzing/${sub_out}.json" ] && cat $dir/.tmp/fuzzing/${sub_out}.json | jq -r 'try .results[] | "\(.status) \(.length) \(.url)"' | sort | anew -q $dir/fuzzing/${sub_out}.txt
				done
				find $dir/fuzzing/ -type f -iname "*.txt" -exec cat {} + 2>>"$LOGFILE" | anew -q $dir/fuzzing/fuzzing_full.txt
			else
				axiom-exec 'wget -q -O - https://raw.githubusercontent.com/six2dez/OneListForAll/main/onelistforallmicro.txt > /home/op/lists/fuzz_wordlist.txt' &>/dev/null
				axiom-scan .tmp/webs_all.txt -m ffuf -w /home/op/lists/fuzz_wordlist.txt -H \"${HEADER}\" $FFUF_FLAGS -maxtime $FFUF_MAXTIME -of json -o $dir/.tmp/fuzzing/ffuf-content.json $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
				[ -s "$dir/.tmp/fuzzing/ffuf-content.json" ] && cat $dir/.tmp/fuzzing/ffuf-content.json | jq -r 'try .results[] | "\(.status) \(.length) \(.url)"' | sort > $dir/.tmp/fuzzing/ffuf-content.tmp
				for sub in $(cat .tmp/webs_all.txt); do
					sub_out=$(echo $sub | sed -e 's|^[^/]*//||' -e 's|/.*$||')
					grep "$sub" $dir/.tmp/fuzzing/ffuf-content.tmp | anew -q $dir/fuzzing/${sub_out}.txt
				done
				find $dir/fuzzing/ -type f -iname "*.txt" -exec cat {} + 2>>"$LOGFILE" | anew -q $dir/fuzzing/fuzzing_full.txt
			fi
			end_func "Results are saved in $domain/fuzzing/*subdomain*.txt" ${FUNCNAME[0]}
		else
			end_func "No $domain/web/webs.txts file found, fuzzing skipped " ${FUNCNAME[0]}
		fi
	else
		if [ "$FUZZ" = false ]; then
			printf "\n${yellow} ${FUNCNAME[0]} skipped in this mode or defined in reconftw.cfg ${reset}\n"
		else
			printf "${yellow} ${FUNCNAME[0]} is already processed, to force executing ${FUNCNAME[0]} delete\n    $called_fn_dir/.${FUNCNAME[0]} ${reset}\n\n"
		fi
	fi
}


###############################################################################################################
############################################# WEB SCAN nuclei + CMS ########################################################
###############################################################################################################

function nuclei_check(){
	if { [ ! -f "$called_fn_dir/.${FUNCNAME[0]}" ] || [ "$DIFF" = true ]; } && [ "$NUCLEICHECK" = true ]; then
		start_func ${FUNCNAME[0]} "Templates based web scanner"
		nuclei -update-templates 2>>"$LOGFILE" &>/dev/null
		mkdir -p nuclei_output
		[ ! -s ".tmp/webs_all.txt" ] && cat webs/webs.txt webs/webs_uncommon_ports.txt 2>/dev/null | anew -q .tmp/webs_all.txt
		[ ! -s ".tmp/webs_subs.txt" ] && cat subdomains/subdomains.txt .tmp/webs_all.txt 2>>"$LOGFILE" | anew -q .tmp/webs_subs.txt
		if [ ! "$AXIOM" = true ]; then
			set -f                      # avoid globbing (expansion of *).
			array=(${NUCLEI_SEVERITY//,/ })
			for i in "${!array[@]}"
			do
				crit=${array[i]}
				printf "${yellow}\n Running : Nuclei $crit ${reset}\n\n"
				cat .tmp/webs_subs.txt 2>/dev/null | nuclei $NUCLEI_FLAGS -severity $crit -r $resolvers_trusted -rl $NUCLEI_RATELIMIT -o nuclei_output/${crit}.txt
			done
			printf "\n\n"
		else
			if [ -s ".tmp/webs_subs.txt" ]; then
				set -f                      # avoid globbing (expansion of *).
				array=(${NUCLEI_SEVERITY//,/ })
				for i in "${!array[@]}"
				do
					crit=${array[i]}
					printf "${yellow}\n Running : Nuclei $crit ${reset}\n\n"
					axiom-scan .tmp/webs_subs.txt -m nuclei -severity ${crit} -rl $NUCLEI_RATELIMIT -o nuclei_output/${crit}.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
				done
				printf "\n\n"
			fi
		fi
		if [ "$BBRF_CONNECTION" = true ]; then
			[ -s "nuclei_output/info.txt" ] && cat nuclei_output/info.txt | cut -d' ' -f6 | sort -u | bbrf url add - -t nuclei:${crit} 2>>"$LOGFILE" &>/dev/null
			[ -s "nuclei_output/low.txt" ] && cat nuclei_output/low.txt | cut -d' ' -f6 | sort -u | bbrf url add - -t nuclei:${crit} 2>>"$LOGFILE" &>/dev/null
			[ -s "nuclei_output/medium.txt" ] && cat nuclei_output/medium.txt | cut -d' ' -f6 | sort -u | bbrf url add - -t nuclei:${crit} 2>>"$LOGFILE" &>/dev/null
			[ -s "nuclei_output/high.txt" ] && cat nuclei_output/high.txt | cut -d' ' -f6 | sort -u | bbrf url add - -t nuclei:${crit} 2>>"$LOGFILE" &>/dev/null
			[ -s "nuclei_output/critical.txt" ] && cat nuclei_output/critical.txt | cut -d' ' -f6 | sort -u | bbrf url add - -t nuclei:${crit} 2>>"$LOGFILE" &>/dev/null
		fi
		end_func "Results are saved in $domain/nuclei_output folder" ${FUNCNAME[0]}
	else
		if [ "$NUCLEICHECK" = false ]; then
			printf "\n${yellow} ${FUNCNAME[0]} skipped in this mode or defined in reconftw.cfg ${reset}\n"
		else
			printf "${yellow} ${FUNCNAME[0]} is already processed, to force executing ${FUNCNAME[0]} delete\n    $called_fn_dir/.${FUNCNAME[0]} ${reset}\n\n"
		fi
	fi
}



function cms_scanner(){
	if { [ ! -f "$called_fn_dir/.${FUNCNAME[0]}" ] || [ "$DIFF" = true ]; } && [ "$CMS_SCANNER" = true ]; then
		start_func ${FUNCNAME[0]} "CMS Scanner"
		mkdir -p $dir/cms && rm -rf $dir/cms/*
		[ ! -s ".tmp/webs_all.txt" ] && cat webs/webs.txt webs/webs_uncommon_ports.txt 2>/dev/null | anew -q .tmp/webs_all.txt
		if [ -s ".tmp/webs_all.txt" ]; then
			tr '\n' ',' < .tmp/webs_all.txt > .tmp/cms.txt
			timeout -k 30 $CMSSCAN_TIMEOUT python3 $tools/CMSeeK/cmseek.py -l .tmp/cms.txt --batch -r 2>>"$LOGFILE" &>/dev/null
			exit_status=$?
			if [[ $exit_status -eq 125 ]]; then
				echo "TIMEOUT cmseek.py - investigate manually for $dir" >> "$LOGFILE"
				end_func "TIMEOUT cmseek.py - investigate manually for $dir" ${FUNCNAME[0]}
				return
			elif [[ $exit_status -ne 0 ]]; then
				echo "ERROR cmseek.py - investigate manually for $dir" >> "$LOGFILE"
				end_func "ERROR cmseek.py - investigate manually for $dir" ${FUNCNAME[0]}
				return
			fi	# otherwise Assume we have a successfully exited cmseek
			for sub in $(cat .tmp/webs_all.txt); do
				sub_out=$(echo $sub | sed -e 's|^[^/]*//||' -e 's|/.*$||')
				cms_id=$(cat $tools/CMSeeK/Result/${sub_out}/cms.json 2>/dev/null | jq -r 'try .cms_id')
				if [ -z "$cms_id" ]; then
					rm -rf $tools/CMSeeK/Result/${sub_out}
				else
					mv -f $tools/CMSeeK/Result/${sub_out} $dir/cms/
				fi
			done
			end_func "Results are saved in $domain/cms/*subdomain* folder" ${FUNCNAME[0]}
		else
			end_func "No $domain/web/webs.txts file found, cms scanner skipped" ${FUNCNAME[0]}
		fi
	else
		if [ "$CMS_SCANNER" = false ]; then
			printf "\n${yellow} ${FUNCNAME[0]} skipped in this mode or defined in reconftw.cfg ${reset}\n"
		else
			printf "${yellow} ${FUNCNAME[0]} is already processed, to force executing ${FUNCNAME[0]} delete\n    $called_fn_dir/.${FUNCNAME[0]} ${reset}\n\n"
		fi
	fi
}


###############################################################################################################
########################################### passive endpoint scan #####################################################
###############################################################################################################


function urlchecks(){
	if { [ ! -f "$called_fn_dir/.${FUNCNAME[0]}" ] || [ "$DIFF" = true ]; } && [ "$URL_CHECK" = true ]; then
		start_func ${FUNCNAME[0]} "URL Extraction"
		mkdir -p js
		[ ! -s ".tmp/webs_all.txt" ] && cat webs/webs.txt webs/webs_uncommon_ports.txt 2>/dev/null | anew -q .tmp/webs_all.txt
		if [ -s ".tmp/webs_all.txt" ]; then
			if [ ! "$AXIOM" = true ]; then
				if [ "$URL_CHECK_PASSIVE" = true ]; then
					cat .tmp/webs_all.txt | waybackurls | anew -q .tmp/url_extract_tmp.txt
					cat .tmp/webs_all.txt | gau --subs --threads $GAU_THREADS | anew -q .tmp/url_extract_tmp.txt
					if [ -s "${GITHUB_TOKENS}" ]; then
						github-endpoints -q -k -d $domain -t ${GITHUB_TOKENS} -o .tmp/github-endpoints.txt 2>>"$LOGFILE" &>/dev/null
						[ -s ".tmp/github-endpoints.txt" ] && cat .tmp/github-endpoints.txt | anew -q .tmp/url_extract_tmp.txt
					fi
				fi
				diff_webs=$(diff <(sort -u .tmp/probed_tmp.txt 2>>"$LOGFILE") <(sort -u .tmp/webs_all.txt 2>>"$LOGFILE") | wc -l)
				if [ $diff_webs != "0" ] || [ ! -s ".tmp/gospider.txt" ]; then
					if [ "$URL_CHECK_ACTIVE" = true ]; then
						if [ "$DEEP" = true ]; then
							gospider -S .tmp/webs_all.txt --js -t $GOSPIDER_THREADS -d 3 --sitemap --robots -w -r > .tmp/gospider.txt
						else
							gospider -S .tmp/webs_all.txt --js -t $GOSPIDER_THREADS -d 2 --sitemap --robots -w -r > .tmp/gospider.txt
						fi
					fi
				fi
				[ -s ".tmp/gospider.txt" ] && sed -i '/^.\{2048\}./d' .tmp/gospider.txt
				[ -s ".tmp/gospider.txt" ] && cat .tmp/gospider.txt | grep -aEo 'https?://[^ ]+' | sed 's/]$//' | grep -E "^(http|https):[\/]{2}([a-zA-Z0-9\-\.]+\.$domain)" | anew -q .tmp/url_extract_tmp.txt
			else
				if [ "$URL_CHECK_PASSIVE" = true ]; then
					axiom-scan .tmp/webs_all.txt -m waybackurls -o .tmp/url_extract_way_tmp.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
					[ -s ".tmp/url_extract_way_tmp.txt" ] && cat .tmp/url_extract_way_tmp.txt | anew -q .tmp/url_extract_tmp.txt
					axiom-scan .tmp/webs_all.txt -m gau -o .tmp/url_extract_gau_tmp.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
					[ -s ".tmp/url_extract_gau_tmp.txt" ] && cat .tmp/url_extract_gau_tmp.txt | anew -q .tmp/url_extract_tmp.txt
					if [ -s "${GITHUB_TOKENS}" ]; then
						github-endpoints -q -k -d $domain -t ${GITHUB_TOKENS} -o .tmp/github-endpoints.txt 2>>"$LOGFILE" &>/dev/null
						[ -s ".tmp/github-endpoints.txt" ] && cat .tmp/github-endpoints.txt | anew -q .tmp/url_extract_tmp.txt
					fi
				fi
				diff_webs=$(diff <(sort -u .tmp/probed_tmp.txt) <(sort -u .tmp/webs_all.txt) | wc -l)
				if [ $diff_webs != "0" ] || [ ! -s ".tmp/gospider.txt" ]; then
					if [ "$URL_CHECK_ACTIVE" = true ]; then
						if [ "$DEEP" = true ]; then
							axiom-scan .tmp/webs_all.txt -m gospider --js -d 3 --sitemap --robots -w -r -o .tmp/gospider $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
						else
							axiom-scan .tmp/webs_all.txt -m gospider --js -d 2 --sitemap --robots -w -r -o .tmp/gospider $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
						fi	
						[[ -d .tmp/gospider/ ]] && find .tmp/gospider -type f -exec cat {} + | sed '/^.\{2048\}./d' | anew -q .tmp/gospider.txt
					fi
				fi
				[[ -d .tmp/gospider/ ]] && NUMFILES=$(find .tmp/gospider/ -type f | wc -l)
				[[ $NUMFILES -gt 0 ]] && cat .tmp/gospider.txt | grep -aEo 'https?://[^ ]+' | sed 's/]$//' | grep -E "^(http|https):[\/]{2}([a-zA-Z0-9\-\.]+\.$domain)" | anew -q .tmp/url_extract_tmp.txt
			fi
			[ -s ".tmp/url_extract_tmp.txt" ] && cat .tmp/url_extract_tmp.txt | grep "${domain}" | grep -aEi "\.(js)" | anew -q js/url_extract_js.txt
			if [ "$DEEP" = true ]; then
				[ -s "js/url_extract_js.txt" ] && cat js/url_extract_js.txt | python3 $tools/JSA/jsa.py | anew -q .tmp/url_extract_tmp.txt
			fi
			[ -s ".tmp/url_extract_tmp.txt" ] &&  cat .tmp/url_extract_tmp.txt | grep "${domain}" | grep "=" | qsreplace -a 2>>"$LOGFILE" | grep -aEiv "\.(eot|jpg|jpeg|gif|css|tif|tiff|png|ttf|otf|woff|woff2|ico|pdf|svg|txt|js)$" | anew -q .tmp/url_extract_tmp2.txt
			[ -s ".tmp/url_extract_tmp2.txt" ] && cat .tmp/url_extract_tmp2.txt | uro | anew -q .tmp/url_extract_uddup.txt 2>>"$LOGFILE" &>/dev/null
			NUMOFLINES=$(cat .tmp/url_extract_uddup.txt 2>>"$LOGFILE" | anew webs/url_extract.txt | sed '/^$/d' | wc -l)
			notification "${NUMOFLINES} new urls with params" info
			end_func "Results are saved in $domain/webs/url_extract.txt" ${FUNCNAME[0]}
			if [ "$PROXY" = true ] && [ -n "$proxy_url" ] && [[ $(cat webs/url_extract.txt | wc -l) -le $DEEP_LIMIT2 ]]; then
				notification "Sending urls to proxy" info
				ffuf -mc all -w webs/url_extract.txt -u FUZZ -replay-proxy $proxy_url 2>>"$LOGFILE" &>/dev/null
			fi
		fi
	else
		if [ "$URL_CHECK" = false ]; then
			printf "\n${yellow} ${FUNCNAME[0]} skipped in this mode or defined in reconftw.cfg ${reset}\n"
		else
			printf "${yellow} ${FUNCNAME[0]} is already processed, to force executing ${FUNCNAME[0]} delete\n    $called_fn_dir/.${FUNCNAME[0]} ${reset}\n\n"
		fi
	fi
}

function url_gf(){
	if { [ ! -f "$called_fn_dir/.${FUNCNAME[0]}" ] || [ "$DIFF" = true ]; } && [ "$URL_GF" = true ]; then
		start_func ${FUNCNAME[0]} "Vulnerable Pattern Search"
		mkdir -p gf
		if [ -s "webs/url_extract.txt" ]; then
			gf xss webs/url_extract.txt | anew -q gf/xss.txt
			gf ssti webs/url_extract.txt | anew -q gf/ssti.txt
			gf ssrf webs/url_extract.txt | anew -q gf/ssrf.txt
			gf sqli webs/url_extract.txt | anew -q gf/sqli.txt
			gf redirect webs/url_extract.txt | anew -q gf/redirect.txt
			[ -s "gf/ssrf.txt" ] && cat gf/ssrf.txt | anew -q gf/redirect.txt
			gf rce webs/url_extract.txt | anew -q gf/rce.txt
			gf potential webs/url_extract.txt | cut -d ':' -f3-5 |anew -q gf/potential.txt
			[ -s ".tmp/url_extract_tmp.txt" ] && cat .tmp/url_extract_tmp.txt | grep -aEiv "\.(eot|jpg|jpeg|gif|css|tif|tiff|png|ttf|otf|woff|woff2|ico|pdf|svg|txt|js)$" | unfurl -u format %s://%d%p 2>>"$LOGFILE" | anew -q gf/endpoints.txt
			gf lfi webs/url_extract.txt | anew -q gf/lfi.txt
		fi
		end_func "Results are saved in $domain/gf folder" ${FUNCNAME[0]}
	else
		if [ "$URL_GF" = false ]; then
			printf "\n${yellow} ${FUNCNAME[0]} skipped in this mode or defined in reconftw.cfg ${reset}\n"
		else
			printf "${yellow} ${FUNCNAME[0]} is already processed, to force executing ${FUNCNAME[0]} delete\n    $called_fn_dir/.${FUNCNAME[0]} ${reset}\n\n"
		fi
	fi
}


function url_ext(){
	if { [ ! -f "$called_fn_dir/.${FUNCNAME[0]}" ] || [ "$DIFF" = true ]; } && [ "$URL_EXT" = true ]; then
		if [ -s ".tmp/url_extract_tmp.txt" ]; then
			start_func ${FUNCNAME[0]} "Urls by extension"
			ext=("7z" "achee" "action" "adr" "apk" "arj" "ascx" "asmx" "asp" "aspx" "axd" "backup" "bak" "bat" "bin" "bkf" "bkp" "bok" "cab" "cer" "cfg" "cfm" "cfml" "cgi" "cnf" "conf" "config" "cpl" "crt" "csr" "csv" "dat" "db" "dbf" "deb" "dmg" "dmp" "doc" "docx" "drv" "email" "eml" "emlx" "env" "exe" "gadget" "gz" "html" "ica" "inf" "ini" "iso" "jar" "java" "jhtml" "json" "jsp" "key" "log" "lst" "mai" "mbox" "mbx" "md" "mdb" "msg" "msi" "nsf" "ods" "oft" "old" "ora" "ost" "pac" "passwd" "pcf" "pdf" "pem" "pgp" "php" "php3" "php4" "php5" "phtm" "phtml" "pkg" "pl" "plist" "pst" "pwd" "py" "rar" "rb" "rdp" "reg" "rpm" "rtf" "sav" "sh" "shtm" "shtml" "skr" "sql" "swf" "sys" "tar" "tar.gz" "tmp" "toast" "tpl" "txt" "url" "vcd" "vcf" "wml" "wpd" "wsdl" "wsf" "xls" "xlsm" "xlsx" "xml" "xsd" "yaml" "yml" "z" "zip")
			#echo "" > webs/url_extract.txt
			for t in "${ext[@]}"; do
				NUMOFLINES=$(cat .tmp/url_extract_tmp.txt | grep -aEi "\.(${t})($|\/|\?)" | sort -u | sed '/^$/d' | wc -l)
				if [[ ${NUMOFLINES} -gt 0 ]]; then
					echo -e "\n############################\n + ${t} + \n############################\n" >> webs/urls_by_ext.txt
					cat .tmp/url_extract_tmp.txt | grep -aEi "\.(${t})($|\/|\?)" >> webs/urls_by_ext.txt
					if [ "$BBRF_CONNECTION" = true ]; then
						cat .tmp/url_extract_tmp.txt | grep -aEi "\.(${t})($|\/|\?)" | bbrf url add - 2>>"$LOGFILE" &>/dev/null
					fi
				fi
			done
			end_func "Results are saved in $domain/webs/urls_by_ext.txt" ${FUNCNAME[0]}
		fi
	else
		if [ "$URL_EXT" = false ]; then
			printf "\n${yellow} ${FUNCNAME[0]} skipped in this mode or defined in reconftw.cfg ${reset}\n"
		else
			printf "${yellow} ${FUNCNAME[0]} is already processed, to force executing ${FUNCNAME[0]} delete\n    $called_fn_dir/.${FUNCNAME[0]} ${reset}\n\n"
		fi
	fi
}


function jschecks(){
	if { [ ! -f "$called_fn_dir/.${FUNCNAME[0]}" ] || [ "$DIFF" = true ]; } && [ "$JSCHECKS" = true ]; then
		start_func ${FUNCNAME[0]} "Javascript Scan"
		if [ -s "js/url_extract_js.txt" ]; then
			printf "${yellow} Running : Fetching Urls 1/5${reset}\n"
			if [ ! "$AXIOM" = true ]; then
				cat js/url_extract_js.txt | subjs -ua "Mozilla/5.0 (X11; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0" -c 40 | grep "$domain" | anew -q .tmp/subjslinks.txt
			else
				axiom-scan js/url_extract_js.txt -m subjs -o .tmp/subjslinks.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null							
			fi
			[ -s ".tmp/subjslinks.txt" ] && cat .tmp/subjslinks.txt | egrep -iv "\.(eot|jpg|jpeg|gif|css|tif|tiff|png|ttf|otf|woff|woff2|ico|pdf|svg|txt|js)" | anew -q js/nojs_links.txt
			[ -s ".tmp/subjslinks.txt" ] && cat .tmp/subjslinks.txt | grep -iE "\.js" | anew -q js/url_extract_js.txt
			printf "${yellow} Running : Resolving JS Urls 2/5${reset}\n"
			if [ ! "$AXIOM" = true ]; then
				[ -s "js/url_extract_js.txt" ] && cat js/url_extract_js.txt | httpx -follow-redirects -random-agent -silent -timeout $HTTPX_TIMEOUT -threads $HTTPX_THREADS -rl $HTTPX_RATELIMIT -status-code -retries 2 -no-color | grep "[200]" | cut -d ' ' -f1 | anew -q js/js_livelinks.txt
			else
				[ -s "js/url_extract_js.txt" ] && axiom-scan js/url_extract_js.txt -m httpx -follow-host-redirects -H \"${HEADER}\" -status-code -threads $HTTPX_THREADS -rl $HTTPX_RATELIMIT -timeout $HTTPX_TIMEOUT -silent -retries 2 -no-color -o .tmp/js_livelinks.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
				[ -s ".tmp/js_livelinks.txt" ] && cat .tmp/js_livelinks.txt | anew .tmp/web_full_info.txt | grep "[200]" | cut -d ' ' -f1 | anew -q js/js_livelinks.txt
			fi
			printf "${yellow} Running : Gathering endpoints 3/5${reset}\n"
			[ -s "js/js_livelinks.txt" ] && python3 xnLinkFinder.py -i js/js_livelinks.txt -o .tmp/js_endpoints.txt &>/dev/null
			if [ -s ".tmp/js_endpoints.txt" ]; then
				sed -i '/^\//!d' .tmp/js_endpoints.txt
				cat .tmp/js_endpoints.txt | anew -q js/js_endpoints.txt
			fi
			printf "${yellow} Running : Gathering secrets 4/5${reset}\n"
			if [ ! "$AXIOM" = true ]; then
				[ -s "js/js_livelinks.txt" ] && cat js/js_livelinks.txt | nuclei -silent -t ~/nuclei-templates/ -tags exposure,token -r $resolvers_trusted -retries 3 -rl $NUCLEI_RATELIMIT -o js/js_secrets.txt 2>>"$LOGFILE" &>/dev/null
			else
				[ -s "js/js_livelinks.txt" ] && axiom-scan js/js_livelinks.txt -m nuclei -w /home/op/recon/nuclei/exposures/tokens/ -retries 3 -rl $NUCLEI_RATELIMIT -o js/js_secrets.txt $AXIOM_EXTRA_ARGS 2>>"$LOGFILE" &>/dev/null
			fi
			printf "${yellow} Running : Building wordlist 5/5${reset}\n"
			[ -s "js/js_livelinks.txt" ] && interlace -tL js/js_livelinks.txt -threads ${INTERLACE_THREADS}  -c "python3 $tools/getjswords.py '_target_' | anew -q webs/dict_words.txt" &>/dev/null
			end_func "Results are saved in $domain/js folder" ${FUNCNAME[0]}
		else
			end_func "No JS urls found for $domain, function skipped" ${FUNCNAME[0]}
		fi
	else
		if [ "$JSCHECKS" = false ]; then
			printf "\n${yellow} ${FUNCNAME[0]} skipped in this mode or defined in reconftw.cfg ${reset}\n"
		else
			printf "${yellow} ${FUNCNAME[0]} is already processed, to force executing ${FUNCNAME[0]} delete\n    $called_fn_dir/.${FUNCNAME[0]} ${reset}\n\n"
		fi
	fi
}


###############################################################################################################
########################################## OPTIONS & MGMT #####################################################
###############################################################################################################

function deleteOutScoped(){
	if [ -z "$1" ]; then
		cat $1 | while read outscoped
		do
			if  grep -q  "^[*]" <<< $outscoped
			then
				outscoped="${outscoped:1}"
				sed -i /"$outscoped$"/d  $2
			else
			sed -i /$outscoped/d  $2
			fi
		done
	fi
}

function getElapsedTime {
	runtime=""
	local T=$2-$1
	local D=$((T/60/60/24))
	local H=$((T/60/60%24))
	local M=$((T/60%60))
	local S=$((T%60))
	(( $D > 0 )) && runtime="$runtime$D days, "
	(( $H > 0 )) && runtime="$runtime$H hours, "
	(( $M > 0 )) && runtime="$runtime$M minutes, "
	runtime="$runtime$S seconds."
}

function zipSnedOutputFolder {
	zip_name=`date +"%Y_%m_%d-%H.%M.%S"`
	zip_name="$zip_name"_"$domain.zip"
	cd $SCRIPTPATH && zip -r $zip_name $dir &>/dev/null
	if [ -s "$SCRIPTPATH/$zip_name" ]; then
		sendToNotify "$SCRIPTPATH/$zip_name"
		rm -f "$SCRIPTPATH/$zip_name"
	else
		notification "No Zip file to send" warn
	fi
}

function isAsciiText {
	IS_ASCII="False";
	if [[ $(file $1 | grep -o 'ASCII text$') == "ASCII text" ]]; then
		IS_ASCII="True";
	else
		IS_ASCII="False";
	fi
}

function output(){
	mkdir -p $dir_output
	cp -r $dir $dir_output
	[[ "$(dirname $dir)" != "$dir_output" ]] && rm -rf "$dir"
}

function remove_big_files(){
	eval rm -rf .tmp/gotator*.txt 2>>"$LOGFILE"
	eval rm -rf .tmp/brute_recursive_wordlist.txt 2>>"$LOGFILE"
	eval rm -rf .tmp/subs_dns_tko.txt  2>>"$LOGFILE"
	eval rm -rf .tmp/subs_no_resolved.txt .tmp/subdomains_dns.txt .tmp/brute_dns_tko.txt .tmp/scrap_subs.txt .tmp/analytics_subs_clean.txt .tmp/gotator1.txt .tmp/gotator2.txt .tmp/passive_recursive.txt .tmp/brute_recursive_wordlist.txt .tmp/gotator1_recursive.txt .tmp/gotator2_recursive.txt 2>>"$LOGFILE"
	eval find .tmp -type f -size +200M -exec rm -f {} + 2>>"$LOGFILE"
}

function notification(){
	if [ -n "$1" ] && [ -n "$2" ]; then
		case $2 in
			info)
				text="\n${bblue} ${1} ${reset}"
				printf "${text}\n" && printf "${text} - ${domain}\n" | $NOTIFY
			;;
			warn)
				text="\n${yellow} ${1} ${reset}"
				printf "${text}\n" && printf "${text} - ${domain}\n" | $NOTIFY
			;;
			error)
				text="\n${bred} ${1} ${reset}"
				printf "${text}\n" && printf "${text} - ${domain}\n" | $NOTIFY
			;;
			good)
				text="\n${bgreen} ${1} ${reset}"
				printf "${text}\n" && printf "${text} - ${domain}\n" | $NOTIFY
			;;
		esac
	fi
}

function sendToNotify {
	if [[ -z "$1" ]]; then
		printf "\n${yellow} no file provided to send ${reset}\n"
	else
		if [[ -z "$NOTIFY_CONFIG" ]]; then
			NOTIFY_CONFIG=~/.config/notify/provider-config.yaml
		fi
		if grep -q '^ telegram\|^telegram\|^    telegram' $NOTIFY_CONFIG ; then
			notification "Sending ${domain} data over Telegram" info
			telegram_chat_id=$(cat ${NOTIFY_CONFIG} | grep '^    telegram_chat_id\|^telegram_chat_id\|^    telegram_chat_id' | xargs | cut -d' ' -f2)
			telegram_key=$(cat ${NOTIFY_CONFIG} | grep '^    telegram_api_key\|^telegram_api_key\|^    telegram_apikey' | xargs | cut -d' ' -f2 )
			curl -F document=@${1} "https://api.telegram.org/bot${telegram_key}/sendDocument?chat_id=${telegram_chat_id}" &>/dev/null
		fi
		if grep -q '^ discord\|^discord\|^    discord' $NOTIFY_CONFIG ; then
			notification "Sending ${domain} data over Discord" info
			discord_url=$(cat ${NOTIFY_CONFIG} | grep '^ discord_webhook_url\|^discord_webhook_url\|^    discord_webhook_url' | xargs | cut -d' ' -f2)
			curl -v -i -H "Accept: application/json" -H "Content-Type: multipart/form-data" -X POST -F file1=@${1} $discord_url &>/dev/null
		fi
		if [[ -n "$slack_channel" ]] && [[ -n "$slack_auth" ]]; then
			notification "Sending ${domain} data over Slack" info
			curl -F file=@${1} -F "initial_comment=reconftw zip file" -F channels=${slack_channel} -H "Authorization: Bearer ${slack_auth}" https://slack.com/api/files.upload &>/dev/null
		fi
	fi
}

function start_func(){
	printf "${bgreen}#######################################################################"
	notification "${2}" info
	echo "[ $(date +"%F %T") ] Start function : ${1} " >> "${LOGFILE}"
	start=$(date +%s)
}

function end_func(){
	touch $called_fn_dir/.${2}
	end=$(date +%s)
	getElapsedTime $start $end
	notification "${2} Finished in ${runtime}" info
	echo "[ $(date +"%F %T") ] End function : ${2} " >> "${LOGFILE}"
	printf "${bblue} ${1} ${reset}\n"
	printf "${bgreen}#######################################################################${reset}\n"
}

function start_subfunc(){
	notification "${2}" warn
	echo "[ $(date +"%F %T") ] Start subfunction : ${1} " >> "${LOGFILE}"
	start_sub=$(date +%s)
}

function end_subfunc(){
	touch $called_fn_dir/.${2}
	end_sub=$(date +%s)
	getElapsedTime $start_sub $end_sub
	notification "${1} in ${runtime}" good
	echo "[ $(date +"%F %T") ] End subfunction : ${1} " >> "${LOGFILE}"
}

function resolvers_update(){
	if [ "$generate_resolvers" = true ]; then
		if [ ! "$AXIOM" = true ]; then	
			if [ ! -s "$resolvers" ] || [[ $(find "$resolvers" -mtime +1 -print) ]] ; then
				notification "Resolvers seem older than 1 day\n Generating custom resolvers..." warn
				eval rm -f $resolvers 2>>"$LOGFILE"
				dnsvalidator -tL https://public-dns.info/nameservers.txt -threads $DNSVALIDATOR_THREADS -o $resolvers &>/dev/null
				dnsvalidator -tL https://raw.githubusercontent.com/blechschmidt/massdns/master/lists/resolvers.txt -threads $DNSVALIDATOR_THREADS -o tmp_resolvers &>/dev/null
				[ -s "tmp_resolvers" ] && cat tmp_resolvers | anew -q $resolvers
				[ -s "tmp_resolvers" ] && rm -f tmp_resolvers &>/dev/null
				[ ! -s "$resolvers" ] && wget -q -O - https://raw.githubusercontent.com/trickest/resolvers/main/resolvers.txt > $resolvers &>/dev/null
				[ ! -s "$resolvers_trusted" ] && wget -q -O - https://raw.githubusercontent.com/trickest/resolvers/main/resolvers-trusted.txt > $resolvers_trusted &>/dev/null
				notification "Updated\n" good
	  		fi
		else
			notification "Checking resolvers lists...\n Accurate resolvers are the key to great results\n This may take around 10 minutes if it's not updated" warn
			# shellcheck disable=SC2016
			axiom-exec 'if [ $(find "/home/op/lists/resolvers.txt" -mtime +1 -print) ] || [ $(cat /home/op/lists/resolvers.txt | wc -l) -le 40 ] ; then dnsvalidator -tL https://public-dns.info/nameservers.txt -threads 200 -o /home/op/lists/resolvers.txt ; fi' &>/dev/null
			axiom-exec 'wget -q -O - https://raw.githubusercontent.com/trickest/resolvers/main/resolvers.txt > /home/op/lists/resolvers.txt' &>/dev/null
			axiom-exec 'wget -q -O - https://raw.githubusercontent.com/trickest/resolvers/main/resolvers-trusted.txt > /home/op/lists/resolvers_trusted.txt' &>/dev/null
			notification "Updated\n" good
		fi
		generate_resolvers=false
	else
		if  [ ! -s "$resolvers" ] || [[ $(find "$resolvers" -mtime +1 -print) ]] ; then
			notification "Resolvers seem older than 1 day\n Downloading new resolvers..." warn
			wget -q -O - https://raw.githubusercontent.com/trickest/resolvers/main/resolvers.txt > $resolvers &>/dev/null
			wget -q -O - https://raw.githubusercontent.com/trickest/resolvers/main/resolvers-trusted.txt > $resolvers_trusted &>/dev/null
			notification "Resolvers updated\n" good
		fi
	fi
}

function resolvers_update_quick_local(){
	if [ "$update_resolvers" = true ]; then
		wget -q -O - https://raw.githubusercontent.com/trickest/resolvers/main/resolvers.txt > $resolvers
		wget -q -O - https://raw.githubusercontent.com/trickest/resolvers/main/resolvers-trusted.txt > $resolvers_trusted
	fi
}

function resolvers_update_quick_axiom(){
	axiom-exec 'wget -q -O - https://raw.githubusercontent.com/trickest/resolvers/main/resolvers.txt > /home/op/lists/resolvers.txt' &>/dev/null
	axiom-exec 'wget -q -O - https://raw.githubusercontent.com/trickest/resolvers/main/resolvers-trusted.txt > /home/op/lists/resolvers_trusted.txt' &>/dev/null
}

function ipcidr_target(){
	IP_CIDR_REGEX='(((25[0-5]|2[0-4][0-9]|1?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|1?[0-9][0-9]?))(\/([8-9]|[1-2][0-9]|3[0-2]))([^0-9.]|$)|(((25[0-5]|2[0-4][0-9]|1?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|1?[0-9][0-9]?)$)'
	if [[ $1 =~ ^$IP_CIDR_REGEX ]]; then
		echo $1 | mapcidr -silent | anew -q target_reconftw_ipcidr.txt
		if [ -s "./target_reconftw_ipcidr.txt" ]; then 
			[ "$REVERSE_IP" = true ] && cat ./target_reconftw_ipcidr.txt | dnsx -ptr -resp-only -silent -retry 3 -r $resolvers_trusted | unfurl -u domains 2>/dev/null | sed 's/\.$//' | anew -q ./target_reconftw_ipcidr.txt
			if [[ $(cat ./target_reconftw_ipcidr.txt | wc -l) -eq 1 ]]; then
				domain=$(cat ./target_reconftw_ipcidr.txt)
			elif [[ $(cat ./target_reconftw_ipcidr.txt | wc -l) -gt 1 ]]; then
				unset domain
				list=${PWD}/target_reconftw_ipcidr.txt
			fi
		fi
		if [ -n "$2" ]; then
			cat $list | anew -q $2
			sed -i '/\/[0-9]*$/d' $2
		fi
	fi
}

function axiom_lauch(){
	# let's fire up a FLEET!
	if [ "$AXIOM_FLEET_LAUNCH" = true ] && [ -n "$AXIOM_FLEET_NAME" ] && [ -n "$AXIOM_FLEET_COUNT" ]; then
		start_func ${FUNCNAME[0]} "Launching our Axiom fleet"
		python3 -m pip install --upgrade linode-cli 2>>"$LOGFILE" &>/dev/null
		# Check to see if we have a fleet already, if so, SKIP THIS!
		NUMOFNODES=$(timeout 30 axiom-ls | grep -c "$AXIOM_FLEET_NAME")
		if [[ $NUMOFNODES -ge $AXIOM_FLEET_COUNT ]]; then
			axiom-select "$AXIOM_FLEET_NAME*"
			end_func "Axiom fleet $AXIOM_FLEET_NAME already has $NUMOFNODES instances"
		else
			if [[ $NUMOFNODES -eq 0 ]]; then
				startcount=$AXIOM_FLEET_COUNT
			else
				startcount=$((AXIOM_FLEET_COUNT-NUMOFNODES))
			fi
			AXIOM_ARGS=" -i $startcount"
			# Temporarily disabled multiple axiom regions
			# [ -n "$AXIOM_FLEET_REGIONS" ] && axiom_args="$axiom_args --regions=\"$AXIOM_FLEET_REGIONS\" "

			echo "axiom-fleet ${AXIOM_FLEET_NAME} ${AXIOM_ARGS}"
			axiom-fleet ${AXIOM_FLEET_NAME} ${AXIOM_ARGS}
			axiom-select "$AXIOM_FLEET_NAME*"
			if [ -n "$AXIOM_POST_START" ]; then
				eval "$AXIOM_POST_START" 2>>"$LOGFILE" &>/dev/null
			fi

			NUMOFNODES=$(timeout 30 axiom-ls | grep -c "$AXIOM_FLEET_NAME" )
			echo "Axiom fleet $AXIOM_FLEET_NAME launched w/ $NUMOFNODES instances" | $NOTIFY
			end_func "Axiom fleet $AXIOM_FLEET_NAME launched w/ $NUMOFNODES instances"
		fi
	fi
}

function axiom_shutdown(){
	if [ "$AXIOM_FLEET_LAUNCH" = true ] && [ "$AXIOM_FLEET_SHUTDOWN" = true ] && [ -n "$AXIOM_FLEET_NAME" ]; then
		#if [ "$mode" == "subs_menu" ] || [ "$mode" == "list_recon" ] || [ "$mode" == "passive" ] || [ "$mode" == "all" ]; then
		if [ "$mode" == "subs_menu" ] || [ "$mode" == "passive" ] || [ "$mode" == "all" ]; then
			notification "Automatic Axiom fleet shutdown is not enabled in this mode" info
			return
		fi
		eval axiom-rm -f "$AXIOM_FLEET_NAME*"
		echo "Axiom fleet $AXIOM_FLEET_NAME shutdown" | $NOTIFY
		notification "Axiom fleet $AXIOM_FLEET_NAME shutdown" info
	fi
}

function axiom_selected(){

	if [[ ! $(axiom-ls | tail -n +2 | sed '$ d' | wc -l) -gt 0 ]]; then
		notification "\n\n${bred} No axiom instances running ${reset}\n\n" error
		exit
	fi

	if [[ ! $(cat ~/.axiom/selected.conf | sed '/^\s*$/d' | wc -l) -gt 0 ]]; then
		notification "\n\n${bred} No axiom instances selected ${reset}\n\n" error
		exit
	fi
}

function start(){

	global_start=$(date +%s)

	if [ "$NOTIFICATION" = true ]; then
		NOTIFY="notify -silent"
	else
	    NOTIFY=""
	fi
	
	printf "\n${bgreen}#######################################################################${reset}"
	notification "Recon succesfully started on ${domain}" good
	[ "$SOFT_NOTIFICATION" = true ] && echo "Recon succesfully started on ${domain}" | notify -silent
	printf "${bgreen}#######################################################################${reset}\n"
	tools_installed

	#[[ -n "$domain" ]] && ipcidr_target $domain


	if [ -z "$domain" ]; then
		if [ -n "$list" ]; then
			if [ -z "$domain" ]; then
				domain="Multi"
				dir="$SCRIPTPATH/Recon/$domain"
				called_fn_dir="$dir"/.called_fn
			fi
			if [[ "$list" = /* ]]; then
				install -D "$list" "$dir"/webs/webs.txt
			else
				install -D "$SCRIPTPATH"/"$list" "$dir"/webs/webs.txt
			fi
		fi
	else
		dir="$SCRIPTPATH/Recon/$domain"
		called_fn_dir="$dir"/.called_fn
	fi

	if [ -z "$domain" ]; then
		notification "\n\n${bred} No domain or list provided ${reset}\n\n" error
		exit
	fi

	if [ ! -d "$called_fn_dir" ]; then
		mkdir -p "$called_fn_dir"
	fi
	mkdir -p "$dir"
	cd "$dir"  || { echo "Failed to cd directory in ${FUNCNAME[0]} @ line ${LINENO}"; exit 1; }
	if [ "$AXIOM" = true ]; then
		if [ -n "$domain" ]; then
			echo "$domain" | anew -q target.txt
			list="${dir}/target.txt"
		fi
	fi
	mkdir -p .tmp .log subdomains webs vulns

	NOW=$(date +"%F")
	NOWT=$(date +"%T")
	LOGFILE="${dir}/.log/${NOW}_${NOWT}.txt"
	touch .log/${NOW}_${NOWT}.txt
	echo "Start ${NOW} ${NOWT}" > "${LOGFILE}"

	if [ "$BBRF_CONNECTION" = true ]; then
		program_bbrf=$(echo $domain | awk -F. '{print $1"_"$2}') 2>>"$LOGFILE" &>/dev/null
		bbrf new ${program_bbrf} 2>>"$LOGFILE" &>/dev/null
		bbrf use ${program_bbrf} 2>>"$LOGFILE" &>/dev/null
		bbrf inscope add "*.${domain}" 2>>"$LOGFILE" &>/dev/null
	fi

	printf "\n"
	printf "${bred} Target: ${domain}\n\n"
}

function end(){

	find $dir -type f -empty -print | grep -v '.called_fn' | grep -v '.log' | grep -v '.tmp' | xargs rm -f &>/dev/null
	find $dir -type d -empty -print -delete &>/dev/null

	echo "End $(date +"%F") $(date +"%T")" >> "${LOGFILE}"

	if [ ! "$PRESERVE" = true ]; then
		find $dir -type f -empty | grep -v "called_fn" | xargs rm -f &>/dev/null
		find $dir -type d -empty | grep -v "called_fn" | xargs rm -rf &>/dev/null
	fi
<<comment1
	if [ "$REMOVETMP" = true ]; then
		rm -rf $dir/.tmp
	fi
comment1
    if [ "$REMOVELOG" = true ]; then
            rm -rf $dir/.log
    fi 

	if [ -n "$dir_output" ]; then
		output
		finaldir=$dir_output
	else
		finaldir=$dir
	fi
	#Zip the output folder and send it via tg/discord/slack
	if [ "$SENDZIPNOTIFY" = true ]; then
		zipSnedOutputFolder
	fi
	global_end=$(date +%s)
	getElapsedTime $global_start $global_end
	printf "${bgreen}#######################################################################${reset}\n"
	notification "Finished Recon on: ${domain} under ${finaldir} in: ${runtime}" good
	[ "$SOFT_NOTIFICATION" = true ] && echo "Finished Recon on: ${domain} under ${finaldir} in: ${runtime}" | notify -silent
	printf "${bgreen}#######################################################################${reset}\n"
	#Seperator for more clear messges in telegram_Bot
	echo "******  Stay safe 🦠 and secure 🔐  ******" | $NOTIFY
}

###############################################################################################################
########################################### MODES & MENUS #####################################################
###############################################################################################################


function recon(){
	
	if [ "$AXIOM" = true ]; then
		axiom_lauch
		axiom_selected
	fi

	subdomains_full
	webprobe_full
	virtualhosts
	remove_big_files
	screenshot
	fuzz
	nuclei_check
	urlchecks
	jschecks

	if [ "$AXIOM" = true ]; then
		axiom_shutdown
	fi

	cms_scanner
	url_gf
	url_ext
}

function multi_recon(){


	global_start=$(date +%s)

	if [ "$NOTIFICATION" = true ]; then
		NOTIFY="notify -silent"
	else
	    NOTIFY=""
	fi

	#[[ -n "$domain" ]] && ipcidr_target $domain

	if [ -s "$list" ]; then
		 sed -i 's/\r$//' $list
		targets=$(cat $list)
	else
		notification "Target list not provided" error
		exit
	fi

	workdir=$SCRIPTPATH/Recon/$multi
	mkdir -p $workdir  || { echo "Failed to create directory '$workdir' in ${FUNCNAME[0]} @ line ${LINENO}"; exit 1; }
	cd "$workdir"  || { echo "Failed to cd directory '$workdir' in ${FUNCNAME[0]} @ line ${LINENO}"; exit 1; }

	mkdir -p .tmp .log .called_fn subdomains webs vulns
	NOW=$(date +"%F")
	NOWT=$(date +"%T")
	LOGFILE="${workdir}/.log/${NOW}_${NOWT}.txt"
	touch .log/${NOW}_${NOWT}.txt
	echo "Start ${NOW} ${NOWT}" > "${LOGFILE}"

	[ -n "$flist" ] && LISTTOTAL=$(cat "$flist" | wc -l )

	for domain in $targets; do
		dir=$workdir/targets/$domain
		called_fn_dir=$dir/.called_fn
		mkdir -p $dir
		cd "$dir"  || { echo "Failed to cd directory '$dir' in ${FUNCNAME[0]} @ line ${LINENO}"; exit 1; }
		mkdir -p .tmp .log .called_fn subdomains webs vulns

		NOW=$(date +"%F")
		NOWT=$(date +"%T")
		LOGFILE="${dir}/.log/${NOW}_${NOWT}.txt"
		touch .log/${NOW}_${NOWT}.txt
		echo "Start ${NOW} ${NOWT}" > "${LOGFILE}"
		loopstart=$(date +%s)

		currently=$(date +"%H:%M:%S")
		loopend=$(date +%s)
		getElapsedTime $loopstart $loopend
		printf "${bgreen}#######################################################################${reset}\n"
		printf "${bgreen} $domain finished 1st loop in ${runtime}  $currently ${reset}\n"
		if [ -n "$flist" ]; then
			POSINLIST=$(eval grep -nrE "^$domain$" "$flist" | cut -f1 -d':')
			printf "\n${yellow}  $domain is $POSINLIST of $LISTTOTAL${reset}\n"
		fi
		printf "${bgreen}#######################################################################${reset}\n"
	done
	cd "$workdir"  || { echo "Failed to cd directory '$workdir' in ${FUNCNAME[0]} @ line ${LINENO}"; exit 1; }

	if [ "$AXIOM" = true ]; then
		axiom_lauch
		axiom_selected
	fi

	for domain in $targets; do
		loopstart=$(date +%s)
		dir=$workdir/targets/$domain
		called_fn_dir=$dir/.called_fn
		cd "$dir"  || { echo "Failed to cd directory '$dir' in ${FUNCNAME[0]} @ line ${LINENO}"; exit 1; }
		subdomains_full
		webprobe_full
		remove_big_files
		screenshot
		virtualhosts
		currently=$(date +"%H:%M:%S")
		loopend=$(date +%s)
		getElapsedTime $loopstart $loopend
		printf "${bgreen}#######################################################################${reset}\n"
		printf "${bgreen} $domain finished 2nd loop in ${runtime}  $currently ${reset}\n"
		if [ -n "$flist" ]; then
			POSINLIST=$(eval grep -nrE "^$domain$" "$flist" | cut -f1 -d':')
			printf "\n${yellow}  $domain is $POSINLIST of $LISTTOTAL${reset}\n"
		fi
		printf "${bgreen}#######################################################################${reset}\n"
	done
	cd "$workdir"  || { echo "Failed to cd directory '$workdir' in ${FUNCNAME[0]} @ line ${LINENO}"; exit 1; }

	notification "############################# Total data ############################" info
	NUMOFLINES_users_total=$(find . -type f -name 'users.txt' -exec cat {} + | anew osint/users.txt | sed '/^$/d' | wc -l)
	NUMOFLINES_pwndb_total=$(find . -type f -name 'passwords.txt' -exec cat {} + | anew osint/passwords.txt | sed '/^$/d' | wc -l)
	NUMOFLINES_software_total=$(find . -type f -name 'software.txt' -exec cat {} + | anew osint/software.txt | sed '/^$/d' | wc -l)
	NUMOFLINES_authors_total=$(find . -type f -name 'authors.txt' -exec cat {} + | anew osint/authors.txt | sed '/^$/d' | wc -l)
	NUMOFLINES_subs_total=$(find . -type f -name 'subdomains.txt' -exec cat {} + | anew subdomains/subdomains.txt | sed '/^$/d' | wc -l)
	NUMOFLINES_subtko_total=$(find . -type f -name 'takeover.txt' -exec cat {} + | anew webs/takeover.txt | sed '/^$/d' | wc -l)
	NUMOFLINES_webs_total=$(find . -type f -name 'webs.txt' -exec cat {} + | anew webs/webs.txt | sed '/^$/d' | wc -l)
	NUMOFLINES_webs_total=$(find . -type f -name 'webs_uncommon_ports.txt' -exec cat {} + | anew webs/webs_uncommon_ports.txt | sed '/^$/d' | wc -l)
	NUMOFLINES_ips_total=$(find . -type f -name 'ips.txt' -exec cat {} + | anew hosts/ips.txt | sed '/^$/d' | wc -l)
	NUMOFLINES_cloudsprov_total=$(find . -type f -name 'cdn_providers.txt' -exec cat {} + | anew hosts/cdn_providers.txt | sed '/^$/d' | wc -l)
	find . -type f -name 'portscan_active.txt' -exec cat {} + > hosts/portscan_active.txt 2>>"$LOGFILE" &>/dev/null
	find . -type f -name 'portscan_active.gnmap' -exec cat {} + > hosts/portscan_active.gnmap 2>>"$LOGFILE" &>/dev/null
	find . -type f -name 'portscan_passive.txt' -exec cat {} + > hosts/portscan_passive.txt 2>>"$LOGFILE" &>/dev/null

	notification "- ${NUMOFLINES_users_total} total users found" good
	notification "- ${NUMOFLINES_pwndb_total} total creds leaked" good
	notification "- ${NUMOFLINES_software_total} total software found" good
	notification "- ${NUMOFLINES_authors_total} total authors found" good
	notification "- ${NUMOFLINES_subs_total} total subdomains" good
	notification "- ${NUMOFLINES_subtko_total} total probably subdomain takeovers" good
	notification "- ${NUMOFLINES_webs_total} total websites" good
	notification "- ${NUMOFLINES_ips_total} total ips" good
	notification "- ${NUMOFLINES_cloudsprov_total} total IPs belongs to cloud" good
	
	nuclei_check
	for domain in $targets; do
		loopstart=$(date +%s)
		dir=$workdir/targets/$domain
		called_fn_dir=$dir/.called_fn
		cd "$dir" || { echo "Failed to cd directory '$dir' in ${FUNCNAME[0]} @ line ${LINENO}"; exit 1; }
		loopstart=$(date +%s)
		fuzz
		urlchecks
		jschecks
		currently=$(date +"%H:%M:%S")
		loopend=$(date +%s)
		getElapsedTime $loopstart $loopend
		printf "${bgreen}#######################################################################${reset}\n"
		printf "${bgreen} $domain finished 3rd loop in ${runtime}  $currently ${reset}\n"
		if [ -n "$flist" ]; then
			POSINLIST=$(eval grep -nrE "^$domain$" "$flist" | cut -f1 -d':')
			printf "\n${yellow}  $domain is $POSINLIST of $LISTTOTAL${reset}\n"
		fi
		printf "${bgreen}#######################################################################${reset}\n"
	done

	if [ "$AXIOM" = true ]; then
		axiom_shutdown
	fi

	for domain in $targets; do
		loopstart=$(date +%s)
		dir=$workdir/targets/$domain
        called_fn_dir=$dir/.called_fn 
		cd "$dir" || { echo "Failed to cd directory '$dir' in ${FUNCNAME[0]} @ line ${LINENO}"; exit 1; }
		cms_scanner
		url_gf
		url_ext
		currently=$(date +"%H:%M:%S")
		loopend=$(date +%s)
		getElapsedTime $loopstart $loopend
		printf "${bgreen}#######################################################################${reset}\n"
		printf "${bgreen} $domain finished final loop in ${runtime}  $currently ${reset}\n"
		if [ -n "$flist" ]; then
			POSINLIST=$(eval grep -nrE "^$domain$" "$flist" | cut -f1 -d':')
			printf "\n${yellow}  $domain is $POSINLIST of $LISTTOTAL${reset}\n"
		fi
		printf "${bgreen}#######################################################################${reset}\n"
	done
	cd "$workdir" || { echo "Failed to cd directory '$workdir' in ${FUNCNAME[0]} @ line ${LINENO}"; exit 1; }
	dir=$workdir
	domain=$multi
	end
}

function subs_menu(){
	start

	if [ "$AXIOM" = true ]; then
		axiom_lauch
		axiom_selected
	fi

	subdomains_full
	webprobe_full
	remove_big_files
	virtualhosts

	if [ "$AXIOM" = true ]; then
		axiom_shutdown
	fi

	end
}


function dirfuzz(){
        
        if [ "$AXIOM" = true ]; then
		axiom_lauch
		axiom_selected
	fi
	
	screenshot
	fuzz
	
	if [ "$AXIOM" = true ]; then
		axiom_shutdown
	fi
}

function url(){
        start
        remove_big_files
        if [ "$AXIOM" = true ]; then
		axiom_lauch
		axiom_selected
	fi
	
	urlchecks
	jschecks

	if [ "$AXIOM" = true ]; then
		axiom_shutdown
	fi
	
	url_gf
	url_ext
	end
}


function webs_menu(){
	remove_big_files
	nuclei_check
	cms_scanner
	end
}

function help(){
	printf "\n Usage: $0 [-d domain.tld] [-m name] [-l list.txt] [-x oos.txt] [-i in.txt] "
	printf "\n           	      [-r] [-s] [-p] [-a] [-w] [-n] [-i] [-h] [-f] [--deep] [-o OUTPUT]\n\n"
	printf " ${bblue}TARGET OPTIONS${reset}\n"
	printf "   -d domain.tld     Target domain\n"
	printf "   -m company        Target company name\n"
	printf "   -l list.txt       Targets list, one per line\n"
	printf "   -x oos.txt        Exclude subdomains list (Out Of Scope)\n"
	printf "   -i in.txt         Include subdomains list\n"
	printf " \n"
	printf " ${bblue}MODE OPTIONS${reset}\n"
	printf "   -r, --recon       Recon - Full recon process (only recon without attacks) \n"
	printf "   -s, --subdomains  Subdomains + port scan + virtual host discovery \n"
	printf "   -u, --url         Endpoint collection active + passive steps \n"
	printf "   -a, --all         All - Perform all checks and exploitations \n"
	printf "   -w, --web         Web checks using nuclei + cms scanner \n"
	printf "   -n, --dirfuzz     Dirfuzz + screenshot \n"
	printf "   -h                Help - Show this help \n"
	printf " \n"
	printf " ${bblue}GENERAL OPTIONS${reset}\n"
	printf "   --deep            Deep scan (Enable some slow options for deeper scan)\n"
	printf "   -f confile_file   Alternate reconftw.cfg file\n"
	printf "   -o output/path    Define output folder\n"
	printf "   -v, --vps         Axiom distributed VPS \n"
	printf "   -q                Rate limit in requests per second \n"
	printf " \n"
	printf " ${bblue}USAGE EXAMPLES${reset}\n"
	printf " Recon:\n"
	printf " ./reconftw.sh -d example.com -r\n"
	printf " \n"
	printf " Subdomain scanning with multiple targets:\n"
	printf " ./reconftw.sh -l targets.txt -s\n"
	printf " \n"
	printf " Web scanning for subdomain list:\n"
	printf " ./reconftw.sh -d example.com -l targets.txt -w\n"
	printf " \n"
	printf " Multidomain recon:\n"
	printf " ./reconftw.sh -m company -l domainlist.txt -r\n"
	printf " \n"
	printf " Full recon with custom output and excluded subdomains list:\n"
	printf " ./reconftw.sh -d example.com -x out.txt -a -o custom/path\n"
}


###############################################################################################################
########################################### START SCRIPT  #####################################################
###############################################################################################################

# macOS PATH initialization, thanks @0xtavian <3
if [[ "$OSTYPE" == "darwin"* ]]; then
	PATH="/usr/local/opt/gnu-getopt/bin:$PATH"
	PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
fi

PROGARGS=$(getopt -o 'd:m:l:x:i:o:f:q:c:rsuanwvh::' --long 'domain:,list:,recon,subdomains,url,all,dirfuzz,web,deep,help,vps' -n 'reconFTW' -- "$@")


# Note the quotes around "$PROGARGS": they are essential!
eval set -- "$PROGARGS"
unset PROGARGS

while true; do
    case "$1" in
        '-d'|'--domain')
            domain=$2
			ipcidr_target $2
            shift 2
            continue
            ;;
        '-m')
            multi=$2
            shift 2
            continue
            ;;
        '-l'|'--list')
			list=$2
			for domain in $(cat $list); do
				ipcidr_target $domain $list
			done
            shift 2
            continue
            ;;
        '-x')
            outOfScope_file=$2
            shift 2
            continue
            ;;
        '-i')
            inScope_file=$2
            shift 2
            continue
            ;;

        # modes
        '-r'|'--recon')
            opt_mode='r'
            shift
            continue
            ;;
        '-s'|'--subdomains')
            opt_mode='s'
            shift
            continue
            ;;
        '-u'|'--url')
            opt_mode='u'
            shift
            continue
            ;;
        '-a'|'--all')
            opt_mode='a'
            shift
            continue
            ;;
        '-w'|'--web')
            opt_mode='w'
            shift
            continue
            ;;
        '-n'|'--dirfuzz')
            opt_mode='n'
            shift
            continue
            ;;
		'-c')
			custom_function=$2
			opt_mode='c'
            shift 2
            continue
            ;;
        # extra stuff
        '-o')
			if [[ "$2" != /* ]]; then
            	dir_output=$PWD/$2
			else
				dir_output=$2
			fi
            shift 2
            continue
            ;;
		'-v'|'--vps')
			which axiom-ls &>/dev/null || { printf "\n Axiom is needed for this mode and is not installed \n You have to install it manually \n" && exit; allinstalled=false;}
			AXIOM=true
            shift
            continue
            ;;
        '-f')
			CUSTOM_CONFIG=$2
            shift 2
            continue
            ;;
		'-q')
			rate_limit=$2
            shift 2
            continue
            ;;
        '--deep')
            opt_deep=true
            shift
            continue
            ;;

        '--')
			shift
			break
		    ;;
        '--help'| '-h'| *)
            # echo "Unknown argument: $1"
            . ./reconftw.cfg
			banner
            help
			tools_installed
			exit 1
		    ;;
    esac
done

# This is the first thing to do to read in alternate config
SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
. "$SCRIPTPATH"/reconftw.cfg
if [ -s "$CUSTOM_CONFIG" ]; then
    . "${CUSTOM_CONFIG}"
fi

if [ $opt_deep ]; then
    DEEP=true
fi

if [ $rate_limit ]; then
    NUCLEI_RATELIMIT=$rate_limit
	FFUF_RATELIMIT=$rate_limit
	HTTPX_RATELIMIT=$rate_limit
fi

if [ -n "$outOfScope_file" ]; then
    isAsciiText $outOfScope_file
    if [ "False" = "$IS_ASCII" ]
    then
        printf "\n\n${bred} Out of Scope file is not a text file${reset}\n\n"
        exit
    fi
fi

if [ -n "$inScope_file" ]; then
    isAsciiText $inScope_file
    if [ "False" = "$IS_ASCII" ]
    then
        printf "\n\n${bred} In Scope file is not a text file${reset}\n\n"
        exit
    fi
fi

if [[ $(id -u | grep -o '^0$') == "0" ]]; then
    SUDO=" "
else
    SUDO="sudo"
fi

startdir=${PWD}

banner

startdir=${PWD}
if [ -n "$list" ]; then
	if [[ "$list" = ./* ]]; then
		flist="${startdir}/${list:2}"
	elif [[ "$list" = ~* ]]; then
		flist="${HOME}/${list:2}"
	elif [[ "$list" = /* ]]; then
		flist=$list
	else
		flist="$startdir/$list"
	fi
else
	flist=''
fi

case $opt_mode in
        'r')
            if [ -n "$multi" ];	then
				if [ "$AXIOM" = true ]; then
					mode="multi_recon"
				fi
				multi_recon
				exit
			fi
			if [ -n "$list" ]; then
				if [ "$AXIOM" = true ]; then
					mode="list_recon"
				fi
				sed -i 's/\r$//' $list
				for domain in $(cat $list); do
					start
					recon
					end
				done
			else
				if [ "$AXIOM" = true ]; then
					mode="recon"
				fi
				start
				recon
				end
			fi
            ;;
        's')
            if [ -n "$list" ]; then
				if [ "$AXIOM" = true ]; then
					mode="subs_menu"
				fi
				sed -i 's/\r$//' $list
				for domain in $(cat $list); do
					subs_menu
				done
			else
				subs_menu
			fi
            ;;
        'u')
            if [ -n "$list" ]; then
				if [ "$AXIOM" = true ]; then
					mode="url"
				fi
				sed -i 's/\r$//' $list
				for domain in $(cat $list); do
					url
				done
			else
				url
			fi
            ;;
        'a')
			export VULNS_GENERAL=true
            if [ -n "$list" ]; then
				if [ "$AXIOM" = true ]; then
					mode="all"
				fi
				sed -i 's/\r$//' $list
				for domain in $(cat $list); do
					all
				done
			else
				all
			fi
            ;;
        'w')
			if [ -n "$list" ]; then
				start
				if [[ "$list" = /* ]]; then
					cp $list $dir/webs/webs.txt
				else
					cp $SCRIPTPATH/$list $dir/webs/webs.txt
				fi
			else
				printf "\n\n${bred} Web mode needs a website list file as target (./reconftw.sh -l target.txt -w) ${reset}\n\n"
				exit
			fi
			webs_menu
			exit
            ;;
        'n')
			PRESERVE=true
			if [ -n "$multi" ];	then
				multi_osint
				exit
			fi
			if [ -n "$list" ]; then
				sed -i 's/\r$//' $list
				for domain in $(cat $list); do
					start
					dirfuzz
					end
				done
			else
				start
				dirfuzz
				end
			fi
			;;
		'c')
			export DIFF=true
			dir="$SCRIPTPATH/Recon/$domain"
			cd $dir || { echo "Failed to cd directory '$dir'"; exit 1; }
			LOGFILE="${dir}/.log/${NOW}_${NOWT}.txt"
			called_fn_dir=$dir/.called_fn 
			$custom_function
			cd $SCRIPTPATH || { echo "Failed to cd directory '$dir'"; exit 1; }
			exit
            ;;
        # No mode selected.  EXIT!
        *)
            help
            tools_installed
            exit 1
            ;;
esac
