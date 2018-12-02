##########################################
# Requirements:                          #
# - Scripts                              #
#   - colors.sh                          #
##########################################

STEP=0
SUBSTEP=0

function InstallStep {
    if [[ ! $SUBSTEP -eq 0 ]]; then
        SUBSTEP=0
    fi

	STEP=$((STEP + 1))
	echo ""
	echo "Step $STEP: ${CYAN}$@${RESET}"
	echo ""
}

function InstallSubstep {
    SUBSTEP=$((SUBSTEP + 1))
    echo ""
    echo "Step $STEP.$SUBSTEP: ${BLUE}$@${RESET}"
    echo ""
}
