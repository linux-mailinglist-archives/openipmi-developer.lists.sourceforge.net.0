Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 436B86428DA
	for <lists+openipmi-developer@lfdr.de>; Mon,  5 Dec 2022 13:59:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1p2B3t-0007Ek-5f;
	Mon, 05 Dec 2022 12:59:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1p2B3r-0007Ea-7l
 for openipmi-developer@lists.sourceforge.net;
 Mon, 05 Dec 2022 12:59:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KP/5WQh/mEOzVxXR0lIeI+bfQ61vrivbOH56tMcNgoQ=; b=R3S9jJQyj3FyGdzmK6n28k/l+l
 85/rlvtVcVL9acvJDU/O5bMpXldqyogl0inNmXZ1O77ZWohvElWyIi2k6JIaW/SM4uUyVWtka8egQ
 KjDkiia8i8yDE0pmibBhhL7rRwtekk7wphGZM86qCmQuADMpDWxCIaZobhPrI5nTVrqA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KP/5WQh/mEOzVxXR0lIeI+bfQ61vrivbOH56tMcNgoQ=; b=aFxJp5UnzGeRaEI1yZpMmTiupa
 +oY6Ewtwji9QygGEvGIwdNjTYTuXMA/v/19csjgsRESOJpcJsJx0esi871y081MxzfjLPtMe2OR3/
 PgeoTaxaV3ZCqoT327e2Cz5S0mZeaxN/StVmZrK0QEMwY1A4169Vmj/6UHK1BbLIE2KY=;
Received: from mail-qv1-f45.google.com ([209.85.219.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p2B3p-0001dz-D5 for openipmi-developer@lists.sourceforge.net;
 Mon, 05 Dec 2022 12:59:07 +0000
Received: by mail-qv1-f45.google.com with SMTP id s14so8081406qvo.11
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 05 Dec 2022 04:59:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KP/5WQh/mEOzVxXR0lIeI+bfQ61vrivbOH56tMcNgoQ=;
 b=ju9s2yD6a403lPEu4ffTSPmB4P9koV8V6cAedPYQgNfH9BTrk3FmI6kgK1i0E9bMz9
 SEfSXQ9s5bMx0rneD7jQ+p+H6Az/1zPrxgFmbqZioBTKuTHT2kiV/1t8z5jC8l19AdOL
 HWeKJfsiTKTeY4NWDhq0i4QNz2Mg+Yxtku9+iCnIEunZxcig8dXEY5l0hb/Er7Bq7+dL
 M7SNsiHhZqepAtLg4aShVpXIiH6C/rfCPYbVn5CH9zZY4DXJFjnkkWa5xg/f4+Lmaxw6
 3B9tamuLB4ZvDHXtxfwnx/fDvgasxYtVtljYRhSFRGZ9rJQ8ndwte3tfKNWfwpHdlXvr
 lbpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=KP/5WQh/mEOzVxXR0lIeI+bfQ61vrivbOH56tMcNgoQ=;
 b=BAEDL9U73hmCHG7Wa7PRv2blckjx8FwGzdzrcaJWyfuGmkEFxEN6pOvLtFcfTrG4uP
 +iO5oP8fr2jg1kbNXBABwdiAkjMN3rt9lVlVka1GlD18/45+KxfsQh+gpJTkXScql0Mv
 iwnkwVmnEU/RjIjzVR/x1Qkn49fSP+UBayeTQkHlDnHHJyiQ1Up0482AmO05RXyMNBZi
 1Ho95gah+6mDRvEpeO3HuSH8xWx36kn8wsHtjxRyk2HConbLNiNwgWRJQv+jhzSlYTie
 lzV4eKthLjpn27xk4qcjz7gEYQznMEcZ6iTJ8Hlg/aSSIMv29bTnSkGwvSWmAf7wmTWP
 1P3A==
X-Gm-Message-State: ANoB5pldBHHJnMjWXXO7W1FJJYbgx4TfJj3DrPa6us0rBCAqQRbHU+YI
 vmcBfkspze496Mu/oN0+qsSx5L5x+g==
X-Google-Smtp-Source: AA0mqf6yWjA1bmajIfMwjJqwDtlJuLoQ3+KFzDF3AFDcI3IYNk2ik9OadyMf4zAY2goalZLMVXaEmA==
X-Received: by 2002:a05:6214:5587:b0:4c7:50d9:ec0b with SMTP id
 mi7-20020a056214558700b004c750d9ec0bmr9681209qvb.59.1670245139269; 
 Mon, 05 Dec 2022 04:58:59 -0800 (PST)
Received: from serve.minyard.net ([47.184.139.94])
 by smtp.gmail.com with ESMTPSA id
 d7-20020a05620a240700b006feba101f85sm2998505qkn.13.2022.12.05.04.58.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Dec 2022 04:58:57 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:42e8:b9a0:e0aa:8ed4])
 by serve.minyard.net (Postfix) with ESMTPSA id 764901800D9;
 Mon,  5 Dec 2022 12:58:55 +0000 (UTC)
Date: Mon, 5 Dec 2022 06:58:54 -0600
From: Corey Minyard <minyard@acm.org>
To: yang.yang29@zte.com.cn
Message-ID: <Y43rDpYejtOcne3+@minyard.net>
References: <202212051936400309332@zte.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202212051936400309332@zte.com.cn>
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Dec 05, 2022 at 07:36:40PM +0800,
 yang.yang29@zte.com.cn
 wrote: > Xu Panda <xu.panda@zte.com.cn> > > The implementation of strscpy()
 is more robust and safer. > That's now the recommended way [...] 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.45 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.45 listed in list.dnswl.org]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1p2B3p-0001dz-D5
Subject: Re: [Openipmi-developer] [PATCH linux-next] ipmi/watchdog: use
 strscpy() to instead of strncpy()
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
Cc: xu.panda@zte.com.cn, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Dec 05, 2022 at 07:36:40PM +0800, yang.yang29@zte.com.cn wrote:
> Xu Panda <xu.panda@zte.com.cn>
> 
> The implementation of strscpy() is more robust and safer.
> That's now the recommended way to copy NUL terminated strings.

This looks right.  Applied, thanks.

-corey

> 
> Signed-off-by: Xu Panda <xu.panda@zte.com.cn>
> Signed-off-by: Yang Yang <yang.yang29@zte.com>
> ---
>  drivers/char/ipmi/ipmi_watchdog.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
> index 47365150e431..0d4a8dcacfd4 100644
> --- a/drivers/char/ipmi/ipmi_watchdog.c
> +++ b/drivers/char/ipmi/ipmi_watchdog.c
> @@ -213,8 +213,7 @@ static int set_param_str(const char *val, const struct kernel_param *kp)
>  	char       valcp[16];
>  	char       *s;
> 
> -	strncpy(valcp, val, 15);
> -	valcp[15] = '\0';
> +	strscpy(valcp, val, 16);
> 
>  	s = strstrip(valcp);
> 
> -- 
> 2.15.2


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
