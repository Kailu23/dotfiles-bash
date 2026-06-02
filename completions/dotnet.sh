#!/usr/bin/env bash
_dotnet() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="build build-server clean format fsi msbuild new nuget pack package project publish reference restore run solution store test tool vstest help sdk workload completions --help --diagnostics --version --info --list-sdks --list-runtimes" 
    
    if [[ $COMP_CWORD == "1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case ${COMP_WORDS[1]} in
        (build)
            _dotnet_build 2
            return
            ;;
            
        (build-server)
            _dotnet_build-server 2
            return
            ;;
            
        (clean)
            _dotnet_clean 2
            return
            ;;
            
        (format)
            _dotnet_format 2
            return
            ;;
            
        (fsi)
            _dotnet_fsi 2
            return
            ;;
            
        (msbuild)
            _dotnet_msbuild 2
            return
            ;;
            
        (new)
            _dotnet_new 2
            return
            ;;
            
        (nuget)
            _dotnet_nuget 2
            return
            ;;
            
        (pack)
            _dotnet_pack 2
            return
            ;;
            
        (package)
            _dotnet_package 2
            return
            ;;
            
        (project)
            _dotnet_project 2
            return
            ;;
            
        (publish)
            _dotnet_publish 2
            return
            ;;
            
        (reference)
            _dotnet_reference 2
            return
            ;;
            
        (restore)
            _dotnet_restore 2
            return
            ;;
            
        (run)
            _dotnet_run 2
            return
            ;;
            
        (solution)
            _dotnet_solution 2
            return
            ;;
            
        (store)
            _dotnet_store 2
            return
            ;;
            
        (test)
            _dotnet_test 2
            return
            ;;
            
        (tool)
            _dotnet_tool 2
            return
            ;;
            
        (vstest)
            _dotnet_vstest 2
            return
            ;;
            
        (help)
            _dotnet_help 2
            return
            ;;
            
        (sdk)
            _dotnet_sdk 2
            return
            ;;
            
        (workload)
            _dotnet_workload 2
            return
            ;;
            
        (completions)
            _dotnet_completions 2
            return
            ;;
            
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}

_dotnet_build() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--use-current-runtime --framework --configuration --version-suffix --no-restore --interactive --verbosity --output --artifacts-path --no-incremental --no-dependencies --no-logo --self-contained --no-self-contained --runtime --arch --os --disable-build-servers --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --framework|-f)
            COMPREPLY=( $(compgen -W "(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" -- "$cur") )
            return
        ;;
        --configuration|-c)
            COMPREPLY=( $(compgen -W "(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" -- "$cur") )
            return
        ;;
        --interactive)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
        --verbosity|-v|--v|-verbosity|/v|/verbosity)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
        --self-contained|--sc)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
        --runtime|-r)
            COMPREPLY=( $(compgen -W "(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_build_server() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="shutdown --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case ${COMP_WORDS[$1]} in
        (shutdown)
            _dotnet_build_server_shutdown $(($1+1))
            return
            ;;
            
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}

_dotnet_build_server_shutdown() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--msbuild --vbcscompiler --razor --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_clean() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--framework --runtime --configuration --interactive --verbosity --output --artifacts-path --no-logo --disable-build-servers --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --framework|-f)
            COMPREPLY=( $(compgen -W "(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" -- "$cur") )
            return
        ;;
        --runtime|-r)
            COMPREPLY=( $(compgen -W "(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" -- "$cur") )
            return
        ;;
        --configuration|-c)
            COMPREPLY=( $(compgen -W "(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" -- "$cur") )
            return
        ;;
        --interactive)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_format() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_fsi() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_msbuild() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--disable-build-servers --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_new() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="create install uninstall update search list details --output --name --dry-run --force --no-update-check --project --verbosity --diagnostics --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --dry-run)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
        --force)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
        --no-update-check)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
    esac
    
    case ${COMP_WORDS[$1]} in
        (create)
            _dotnet_new_create $(($1+1))
            return
            ;;
            
        (install)
            _dotnet_new_install $(($1+1))
            return
            ;;
            
        (uninstall)
            _dotnet_new_uninstall $(($1+1))
            return
            ;;
            
        (update)
            _dotnet_new_update $(($1+1))
            return
            ;;
            
        (search)
            _dotnet_new_search $(($1+1))
            return
            ;;
            
        (list)
            _dotnet_new_list $(($1+1))
            return
            ;;
            
        (details)
            _dotnet_new_details $(($1+1))
            return
            ;;
            
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}

_dotnet_new_create() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--output --name --dry-run --force --no-update-check --project --verbosity --diagnostics --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --dry-run)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
        --force)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
        --no-update-check)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_new_install() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--interactive --add-source --force --verbosity --diagnostics --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --interactive)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
        --force)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_new_uninstall() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--verbosity --diagnostics --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_new_update() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--interactive --add-source --check-only --verbosity --diagnostics --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --interactive)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_new_search() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--author --language --type --tag --package --columns-all --columns --verbosity --diagnostics --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --columns)
            COMPREPLY=( $(compgen -W "author language tags type" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_new_list() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--author --language --type --tag --ignore-constraints --output --project --columns-all --columns --verbosity --diagnostics --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --columns)
            COMPREPLY=( $(compgen -W "author language tags type" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_new_details() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--interactive --add-source --verbosity --diagnostics --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --interactive)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_nuget() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="delete locals push verify trust sign why --version --verbosity --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case ${COMP_WORDS[$1]} in
        (delete)
            _dotnet_nuget_delete $(($1+1))
            return
            ;;
            
        (locals)
            _dotnet_nuget_locals $(($1+1))
            return
            ;;
            
        (push)
            _dotnet_nuget_push $(($1+1))
            return
            ;;
            
        (verify)
            _dotnet_nuget_verify $(($1+1))
            return
            ;;
            
        (trust)
            _dotnet_nuget_trust $(($1+1))
            return
            ;;
            
        (sign)
            _dotnet_nuget_sign $(($1+1))
            return
            ;;
            
        (why)
            _dotnet_nuget_why $(($1+1))
            return
            ;;
            
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}

_dotnet_nuget_delete() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--force-english-output --source --non-interactive --api-key --no-service-endpoint --interactive --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_nuget_locals() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--force-english-output --clear --list --help" 
    opts="$opts (all global-packages http-cache plugins-cache temp)" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_nuget_push() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--force-english-output --source --symbol-source --timeout --api-key --symbol-api-key --disable-buffering --no-symbols --no-service-endpoint --interactive --skip-duplicate --configfile --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_nuget_verify() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--all --certificate-fingerprint --verbosity --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_nuget_trust() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="list author repository source certificate remove sync --configfile --verbosity --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
    esac
    
    case ${COMP_WORDS[$1]} in
        (list)
            _dotnet_nuget_trust_list $(($1+1))
            return
            ;;
            
        (author)
            _dotnet_nuget_trust_author $(($1+1))
            return
            ;;
            
        (repository)
            _dotnet_nuget_trust_repository $(($1+1))
            return
            ;;
            
        (source)
            _dotnet_nuget_trust_source $(($1+1))
            return
            ;;
            
        (certificate)
            _dotnet_nuget_trust_certificate $(($1+1))
            return
            ;;
            
        (remove)
            _dotnet_nuget_trust_remove $(($1+1))
            return
            ;;
            
        (sync)
            _dotnet_nuget_trust_sync $(($1+1))
            return
            ;;
            
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}

_dotnet_nuget_trust_list() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--configfile --verbosity --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_nuget_trust_author() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--configfile --verbosity --allow-untrusted-root --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_nuget_trust_repository() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--configfile --verbosity --allow-untrusted-root --owners --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_nuget_trust_source() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--configfile --verbosity --owners --source-url --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_nuget_trust_certificate() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--configfile --verbosity --allow-untrusted-root --algorithm --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
        --algorithm)
            COMPREPLY=( $(compgen -W "SHA256 SHA384 SHA512" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_nuget_trust_remove() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--configfile --verbosity --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_nuget_trust_sync() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--configfile --verbosity --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_nuget_sign() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--output --certificate-path --certificate-store-name --certificate-store-location --certificate-subject-name --certificate-fingerprint --certificate-password --hash-algorithm --timestamper --timestamp-hash-algorithm --overwrite --verbosity --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_nuget_why() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--framework --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_pack() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--output --artifacts-path --no-build --include-symbols --include-source --serviceable --no-logo --interactive --no-restore --verbosity --version-suffix --version --configuration --disable-build-servers --use-current-runtime --runtime --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --interactive)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
        --verbosity|-v|--v|-verbosity|/v|/verbosity)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
        --configuration|-c)
            COMPREPLY=( $(compgen -W "(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" -- "$cur") )
            return
        ;;
        --runtime|-r)
            COMPREPLY=( $(compgen -W "(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_package() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="search add list remove update download --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case ${COMP_WORDS[$1]} in
        (search)
            _dotnet_package_search $(($1+1))
            return
            ;;
            
        (add)
            _dotnet_package_add $(($1+1))
            return
            ;;
            
        (list)
            _dotnet_package_list $(($1+1))
            return
            ;;
            
        (remove)
            _dotnet_package_remove $(($1+1))
            return
            ;;
            
        (update)
            _dotnet_package_update $(($1+1))
            return
            ;;
            
        (download)
            _dotnet_package_download $(($1+1))
            return
            ;;
            
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}

_dotnet_package_search() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--source --take --skip --exact-match --interactive --prerelease --configfile --format --verbosity --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_package_add() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--version --framework --no-restore --source --package-directory --interactive --prerelease --project --file --help" 
    opts="$opts $(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --version|-v)
            COMPREPLY=( $(compgen -W "(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_package_list() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--verbosity --outdated --deprecated --vulnerable --framework --include-transitive --include-prerelease --highest-patch --highest-minor --config --source --interactive --format --output-version --no-restore --project --file --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
        --format)
            COMPREPLY=( $(compgen -W "console json" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_package_remove() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--interactive --project --file --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_package_update() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--project --vulnerable --interactive --verbosity --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --vulnerable)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
        --interactive)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_package_download() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--allow-insecure-connections --configfile --interactive --output --prerelease --source --verbosity --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --interactive)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_project() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="convert --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case ${COMP_WORDS[$1]} in
        (convert)
            _dotnet_project_convert $(($1+1))
            return
            ;;
            
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}

_dotnet_project_convert() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--output --force --interactive --dry-run --delete-source --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --interactive)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_publish() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--use-current-runtime --output --artifacts-path --manifest --no-build --self-contained --no-self-contained --no-logo --framework --configuration --version-suffix --interactive --no-restore --verbosity --runtime --arch --os --disable-build-servers --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --self-contained|--sc)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
        --framework|-f)
            COMPREPLY=( $(compgen -W "(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" -- "$cur") )
            return
        ;;
        --configuration|-c)
            COMPREPLY=( $(compgen -W "(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" -- "$cur") )
            return
        ;;
        --interactive)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
        --verbosity|-v|--v|-verbosity|/v|/verbosity)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
        --runtime|-r)
            COMPREPLY=( $(compgen -W "(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_reference() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="add list remove --project --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case ${COMP_WORDS[$1]} in
        (add)
            _dotnet_reference_add $(($1+1))
            return
            ;;
            
        (list)
            _dotnet_reference_list $(($1+1))
            return
            ;;
            
        (remove)
            _dotnet_reference_remove $(($1+1))
            return
            ;;
            
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}

_dotnet_reference_add() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--framework --interactive --project --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --framework|-f)
            COMPREPLY=( $(compgen -W "(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_reference_list() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--project --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_reference_remove() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--framework --project --help" 
    opts="$opts $(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_restore() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--disable-build-servers --source --packages --use-current-runtime --disable-parallel --configfile --no-http-cache --ignore-failed-sources --force --no-dependencies --verbosity --interactive --artifacts-path --use-lock-file --locked-mode --lock-file-path --force-evaluate --no-logo --runtime --arch --os --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
        --interactive)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
        --runtime|-r)
            COMPREPLY=( $(compgen -W "(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_run() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--configuration --framework --project --file --launch-profile --no-launch-profile --device --list-devices --no-build --interactive --no-restore --no-cache --self-contained --no-self-contained --verbosity --runtime --arch --os --disable-build-servers --artifacts-path --environment --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --configuration|-c)
            COMPREPLY=( $(compgen -W "(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" -- "$cur") )
            return
        ;;
        --framework|-f)
            COMPREPLY=( $(compgen -W "(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" -- "$cur") )
            return
        ;;
        --interactive)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
        --self-contained|--sc)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
        --verbosity|-v|--v|-verbosity|/v|/verbosity)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
        --runtime|-r)
            COMPREPLY=( $(compgen -W "(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_solution() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="add list remove migrate --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case ${COMP_WORDS[$1]} in
        (add)
            _dotnet_solution_add $(($1+1))
            return
            ;;
            
        (list)
            _dotnet_solution_list $(($1+1))
            return
            ;;
            
        (remove)
            _dotnet_solution_remove $(($1+1))
            return
            ;;
            
        (migrate)
            _dotnet_solution_migrate $(($1+1))
            return
            ;;
            
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}

_dotnet_solution_add() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--in-root --solution-folder --include-references --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --in-root)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
        --include-references)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_solution_list() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--solution-folders --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_solution_remove() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_solution_migrate() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_store() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--manifest --framework-version --output --working-dir --skip-optimization --skip-symbols --framework --runtime --verbosity --use-current-runtime --disable-build-servers --no-logo --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --framework|-f)
            COMPREPLY=( $(compgen -W "(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" -- "$cur") )
            return
        ;;
        --runtime|-r)
            COMPREPLY=( $(compgen -W "(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" -- "$cur") )
            return
        ;;
        --verbosity|-v|--v|-verbosity|/v|/verbosity)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_test() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--settings --list-tests --environment --filter --test-adapter-path --logger --output --artifacts-path --diag --no-build --results-directory --collect --blame --blame-crash --blame-crash-dump-type --blame-crash-collect-always --blame-hang --blame-hang-dump-type --blame-hang-timeout --no-logo --configuration --framework --no-restore --interactive --verbosity --runtime --arch --os --disable-build-servers --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --blame-crash-dump-type)
            COMPREPLY=( $(compgen -W "full mini" -- "$cur") )
            return
        ;;
        --blame-hang-dump-type)
            COMPREPLY=( $(compgen -W "full mini none" -- "$cur") )
            return
        ;;
        --configuration|-c)
            COMPREPLY=( $(compgen -W "(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" -- "$cur") )
            return
        ;;
        --framework|-f)
            COMPREPLY=( $(compgen -W "(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" -- "$cur") )
            return
        ;;
        --interactive)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
        --verbosity|-v|--v|-verbosity|/v|/verbosity)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
        --runtime|-r)
            COMPREPLY=( $(compgen -W "(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_tool() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="install uninstall update list run search restore execute --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case ${COMP_WORDS[$1]} in
        (install)
            _dotnet_tool_install $(($1+1))
            return
            ;;
            
        (uninstall)
            _dotnet_tool_uninstall $(($1+1))
            return
            ;;
            
        (update)
            _dotnet_tool_update $(($1+1))
            return
            ;;
            
        (list)
            _dotnet_tool_list $(($1+1))
            return
            ;;
            
        (run)
            _dotnet_tool_run $(($1+1))
            return
            ;;
            
        (search)
            _dotnet_tool_search $(($1+1))
            return
            ;;
            
        (restore)
            _dotnet_tool_restore $(($1+1))
            return
            ;;
            
        (execute)
            _dotnet_tool_execute $(($1+1))
            return
            ;;
            
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}

_dotnet_tool_install() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--global --local --tool-path --version --configfile --tool-manifest --add-source --source --framework --prerelease --disable-parallel --ignore-failed-sources --no-http-cache --interactive --verbosity --allow-downgrade --arch --create-manifest-if-needed --allow-roll-forward --help" 
    opts="$opts $(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
        --create-manifest-if-needed)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_tool_uninstall() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--global --local --tool-path --tool-manifest --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_tool_update() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--global --local --tool-path --version --configfile --tool-manifest --add-source --source --framework --prerelease --disable-parallel --ignore-failed-sources --no-http-cache --interactive --verbosity --allow-downgrade --all --help" 
    opts="$opts $(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_tool_list() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--global --local --tool-path --format --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --format)
            COMPREPLY=( $(compgen -W "json table" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_tool_run() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--allow-roll-forward --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_tool_search() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--detail --skip --take --prerelease --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_tool_restore() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--configfile --add-source --tool-manifest --verbosity --disable-parallel --ignore-failed-sources --no-http-cache --interactive --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_tool_execute() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--version --allow-roll-forward --prerelease --configfile --source --add-source --verbosity --disable-parallel --ignore-failed-sources --no-http-cache --interactive --help" 
    opts="$opts $(${COMP_WORDS[0]} complete --position ${COMP_POINT} ${COMP_LINE} 2>/dev/null | tr '\n' ' ')" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_vstest() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--Platform --Framework --logger --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_help() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_sdk() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="check --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case ${COMP_WORDS[$1]} in
        (check)
            _dotnet_sdk_check $(($1+1))
            return
            ;;
            
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}

_dotnet_sdk_check() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_workload() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="install update list search uninstall repair restore clean config history --info --version --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case ${COMP_WORDS[$1]} in
        (install)
            _dotnet_workload_install $(($1+1))
            return
            ;;
            
        (update)
            _dotnet_workload_update $(($1+1))
            return
            ;;
            
        (list)
            _dotnet_workload_list $(($1+1))
            return
            ;;
            
        (search)
            _dotnet_workload_search $(($1+1))
            return
            ;;
            
        (uninstall)
            _dotnet_workload_uninstall $(($1+1))
            return
            ;;
            
        (repair)
            _dotnet_workload_repair $(($1+1))
            return
            ;;
            
        (restore)
            _dotnet_workload_restore $(($1+1))
            return
            ;;
            
        (clean)
            _dotnet_workload_clean $(($1+1))
            return
            ;;
            
        (config)
            _dotnet_workload_config $(($1+1))
            return
            ;;
            
        (history)
            _dotnet_workload_history $(($1+1))
            return
            ;;
            
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}

_dotnet_workload_install() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--temp-dir --verbosity --configfile --source --include-previews --version --disable-parallel --ignore-failed-sources --no-http-cache --interactive --skip-manifest-update --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
        --include-previews)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_workload_update() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--temp-dir --verbosity --configfile --source --include-previews --version --disable-parallel --ignore-failed-sources --no-http-cache --interactive --from-previous-sdk --advertising-manifests-only --from-history --manifests-only --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
        --include-previews)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
        --from-previous-sdk)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_workload_list() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_workload_search() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="version --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case ${COMP_WORDS[$1]} in
        (version)
            _dotnet_workload_search_version $(($1+1))
            return
            ;;
            
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}

_dotnet_workload_search_version() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--format --take --include-previews --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --include-previews)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_workload_uninstall() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--verbosity --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_workload_repair() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--configfile --source --verbosity --disable-parallel --ignore-failed-sources --no-http-cache --interactive --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_workload_restore() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--temp-dir --verbosity --configfile --source --include-previews --version --disable-parallel --ignore-failed-sources --no-http-cache --interactive --skip-manifest-update --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --verbosity|-v)
            COMPREPLY=( $(compgen -W "d detailed diag diagnostic m minimal n normal q quiet" -- "$cur") )
            return
        ;;
        --include-previews)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_workload_clean() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--all --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --all)
            COMPREPLY=( $(compgen -W "False True" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_workload_config() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--update-mode --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case $prev in
        --update-mode)
            COMPREPLY=( $(compgen -W "manifests workload-set" -- "$cur") )
            return
        ;;
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_workload_history() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}


_dotnet_completions() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="script --help" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    case ${COMP_WORDS[$1]} in
        (script)
            _dotnet_completions_script $(($1+1))
            return
            ;;
            
    esac
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}

_dotnet_completions_script() {

    cur="${COMP_WORDS[COMP_CWORD]}" 
    prev="${COMP_WORDS[COMP_CWORD-1]}" 
    COMPREPLY=()
    
    opts="--help" 
    opts="$opts (bash fish nushell pwsh zsh)" 
    
    if [[ $COMP_CWORD == "$1" ]]; then
        COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
        return
    fi
    
    COMPREPLY=( $(compgen -W "$opts" -- "$cur") )
}



complete -F _dotnet dotnet