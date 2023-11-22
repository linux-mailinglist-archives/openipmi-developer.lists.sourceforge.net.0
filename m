Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BCFAB7F51E1
	for <lists+openipmi-developer@lfdr.de>; Wed, 22 Nov 2023 21:49:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1r5u9q-0003vv-Jh;
	Wed, 22 Nov 2023 20:49:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1r5u9p-0003vn-UR
 for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Nov 2023 20:49:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4H1N3wUMFFgburbm5dXTGcW3MLFGgcqhOobufDfmiaI=; b=RJFPRxg/t+so++Jaid7ok4N5dH
 u91PtkBndr7AUqPRYVLJEKua3RDpactsZtMQLSxZ1oq7xto/kMezT3zutAY8z/MplXYAzA24deKcq
 FYPAaYwL/aY5G5fXtzWfoFs/usZeCApelMpqRrbskTStx5HjZ1WCAzGw7uWOMCySIkhQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4H1N3wUMFFgburbm5dXTGcW3MLFGgcqhOobufDfmiaI=; b=YEst3MFLDW3nWj2SRbRoBPr/zC
 jxbq1qDca0xWUr7hXJaxk2kM7IFFjkOz47PrgSrrKFsQF2Lfa8qUHe5S1r59wtV3eW3dUnxAumS+6
 dTxxyQfmGKFtavBHr1hhwsp5LnrPyRt/Zng065zSsn9/EYclpeHfYk25jiY8YDyoEnpI=;
Received: from mail-yw1-f179.google.com ([209.85.128.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1r5u9m-0008J1-Dk for openipmi-developer@lists.sourceforge.net;
 Wed, 22 Nov 2023 20:49:14 +0000
Received: by mail-yw1-f179.google.com with SMTP id
 00721157ae682-5cc5adfa464so1798647b3.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 22 Nov 2023 12:49:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1700686144; x=1701290944; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=4H1N3wUMFFgburbm5dXTGcW3MLFGgcqhOobufDfmiaI=;
 b=mwnqU3byBNMqdilKgbI0OdUJ2DVy3Vp22GaQtwUiJc3USTI+iDAMMhk++lOsUI1S49
 CbD2fwLu5IsOGF4V+oeJpPxDepyLHED+nr2B47VYoyMqXbXc+CzBEMGOhQKE7zO7cYWu
 0/ic+VaZ2HrYATIPETcq2oeSrFIBzkMwV0F9AEdnUAce2HGwdOB4rCuDM2/W8sOmXAc3
 a2KQdQwJc7p2fLUAwNR9zjJuMh/Tj3s9Bu/e6YTOPLjHV+zTPtSaknEYxlW/v6d670Pf
 ZHVJKx0qXyT2jWXCEqnnEitKOqs8bjHS5+CP37Y5oJiYDOPwKMZpvC3RWGeDZ5VS4KqE
 pFOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700686144; x=1701290944;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=4H1N3wUMFFgburbm5dXTGcW3MLFGgcqhOobufDfmiaI=;
 b=djlsGNs6A4oO/JL0lGTNSuT3QOWOmMWUaqWryAbhQNDzJZqTuopaaClSmIXucSx2H9
 cQfyjk1wmEks52wIn+itX4lxIdDQQanRGQajXBdPp0dUADDP8zM7hpWldeVOtUZDuIzg
 Hb50p8OXj1Hw0XjbJ3EizI+2esfk/WnRXtAP9Qkcl/6juaQpSH6wAyVgw4rioDB6sPoL
 CBM79xskiaJCffbCjOWhV4YZguqRjtUNiZGtNYmHnk0iw+ksmzkc2TNsVb/AwpJlrDF6
 E138ICy83oWnD/1QvPx9EO3UwM3j0NE4atN/uepLob8rsR/2ChlFgxFhEHTD/gupw3tx
 kMgA==
X-Gm-Message-State: AOJu0YxUevgV5yyVmmQG4PP7FFmrL8/+HcHnZy9AbcAmp7axsjsGGKvb
 tGFAIaviw7SN3uor7VlEgcMKj1f3Pg==
X-Google-Smtp-Source: AGHT+IFUuE1uEagxC49igXqfNVcU9CcbfHcTV3HFIuVON9vaVCEPlC4d2jsvke7jE+DBIKs6MTD/sQ==
X-Received: by 2002:a25:258b:0:b0:da0:d0e6:905d with SMTP id
 l133-20020a25258b000000b00da0d0e6905dmr3460562ybl.59.1700686144511; 
 Wed, 22 Nov 2023 12:49:04 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 q8-20020a25f908000000b00d9caecd5c86sm1518023ybe.62.2023.11.22.12.49.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Nov 2023 12:49:03 -0800 (PST)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:4b88:896b:27a8:aa33])
 by serve.minyard.net (Postfix) with ESMTPSA id 86804180047;
 Wed, 22 Nov 2023 20:49:02 +0000 (UTC)
Date: Wed, 22 Nov 2023 14:49:01 -0600
From: Corey Minyard <minyard@acm.org>
To: Emilio Perez <emiliopeju@gmail.com>
Message-ID: <ZV5pPW9RsGsazy4i@mail.minyard.net>
References: <20231122203433.443098-1-emiliopeju@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231122203433.443098-1-emiliopeju@gmail.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Nov 22, 2023 at 08:34:28PM +0000, Emilio Perez wrote:
 > regspacings parameter is currently ignored and the platform data uses a
 > default value of 0, this has been fixed by setting the appropr [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.179 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.179 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1r5u9m-0008J1-Dk
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Use regspacings passed as a
 module parameter
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: minyard@acm.org
Cc: "moderated list:IPMI SUBSYSTEM" <openipmi-developer@lists.sourceforge.net>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Nov 22, 2023 at 08:34:28PM +0000, Emilio Perez wrote:
> regspacings parameter is currently ignored and the platform data uses a
> default value of 0, this has been fixed by setting the appropriate field
> in the platform data.

Yep, queued for next release.  Thank you.

-corey

> 
> Fixes: 3cd83bac481d ("ipmi: Consolidate the adding of platform devices")
> Signed-off-by: Emilio Perez <emiliopeju@gmail.com>
> ---
>  drivers/char/ipmi/ipmi_si_hardcode.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_si_hardcode.c b/drivers/char/ipmi/ipmi_si_hardcode.c
> index ed5e91b1e040..0c92fa3eee88 100644
> --- a/drivers/char/ipmi/ipmi_si_hardcode.c
> +++ b/drivers/char/ipmi/ipmi_si_hardcode.c
> @@ -80,10 +80,10 @@ static void __init ipmi_hardcode_init_one(const char *si_type_str,
>  	}
>  
>  	p.regsize = regsizes[i];
> +	p.regspacing = regspacings[i];
>  	p.slave_addr = slave_addrs[i];
>  	p.addr_source = SI_HARDCODED;
>  	p.regshift = regshifts[i];
> -	p.regsize = regsizes[i];
>  	p.addr = addr;
>  	p.space = addr_space;
>  
> -- 
> 2.39.3
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
