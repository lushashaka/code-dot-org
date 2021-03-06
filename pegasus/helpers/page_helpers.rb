def page_title_with_tagline()
  title = @header['title'] || @config[:page_default_title].to_s
  tagline = @header['tagline'] || @config[:page_default_tagline].to_s
  return title if tagline.empty? || title == tagline
  title + ' | ' + tagline
end

def page_translated?()
  request.locale != 'en-US'
end

def locale_ro?()
  request.locale == 'ro-RO'
end

def locale_br?()
  request.locale == 'pt-BR'
end

def locale_it?()
  request.locale == 'it-IT'
end

def locale_chapter_partner?()
  request.locale() == 'ro-RO' || request.locale() == 'pt-BR' || request.locale() == 'it-IT'
end

def partner_site?()
  partner_sites = ['al.code.org', 'ar.code.org', 'br.code.org', 'eu.code.org', 'italia.code.org', 'ro.code.org', 'uk.code.org', 'za.code.org']
  return partner_sites.include?(request.site)
end
