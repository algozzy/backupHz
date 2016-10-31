# Frequence de la sauvegarde : day, week, month, year
svgFreq=$1

# Chemin de la sauvegarde ex: /home/toto/svg/day
svgPath=$2

# Prefix du nom du fichier de la sauvegare
svgPrefix=$3

# Chemin du repertoire a sauvegarder récursivement
svgPath2Save=$4

echo $svgFreq
case  $svgFreq in
	"day")
		tar -zcvf $svgPath/$svgPrefix-`date +%u`.tar.gz $svgPath2Save
		;;
	"week")
	        tar -zcvf $svgPath/$svgPrefix-`date +%u`.tar.gz $svgPath2Save
		;;
	"month")
	        tar -zcvf $svgPath/$svgPrefix-`date +%m`.tar.gz $svgPath2Save
	        ;;
	"year")
		tar -zcvf $svgPath/$svgPrefix-`date +%Y-%m-%d_%H:%M`.tar.gz $svgPath2Save
		i;;
	esac

