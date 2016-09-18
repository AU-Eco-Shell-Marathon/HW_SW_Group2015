@echo Blow-Ball 3000 Rapport characters:
@pdftotext Report.pdf -enc UTF-8 - | wc
@echo   Lines ^| Words ^| Chars
@pause