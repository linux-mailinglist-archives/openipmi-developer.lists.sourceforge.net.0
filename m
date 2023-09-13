Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FC179DD17
	for <lists+openipmi-developer@lfdr.de>; Wed, 13 Sep 2023 02:19:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qgDbY-0007RD-Be;
	Wed, 13 Sep 2023 00:19:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1qgDbW-0007R6-Rk
 for openipmi-developer@lists.sourceforge.net;
 Wed, 13 Sep 2023 00:19:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PfghF8uM8XDGpkVqp5zNnFzbHxUr4fq3CDSPLr1OUm4=; b=Q8D3VMG+HjvX67vvERLqzNC7NK
 MfHRHe6l53o0YqKRXHNtYb3Yv+h2QdLwnMGt5m5R408FNkG3wkKacJ8+g6Z2warczxW7Ittkd7mOt
 VbEFF0DG8DZIomKRt21CG4xaDM1t2mjHMxAbYhTrnrEIWe+cpMSVUPXb0iDfYioBo3dA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PfghF8uM8XDGpkVqp5zNnFzbHxUr4fq3CDSPLr1OUm4=; b=NnoPJRcks6P6MpVMdcnM+2UIUx
 zJsIpqCt2DYa8ADK7OYkKH0o1pu6YBmGJDxzakZIE7PJRiMOikpHLyKR9QW4NI9dgWdpTNIHInJy7
 Z7qdYa2Y7TgfLDyUA7YufRkPCS+DzY4SS659gtZgW9/uor+cg7dpVB8yL8qjGNSm06Fc=;
Received: from mail-oo1-f41.google.com ([209.85.161.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qgDbR-0000Gg-Nq for openipmi-developer@lists.sourceforge.net;
 Wed, 13 Sep 2023 00:19:38 +0000
Received: by mail-oo1-f41.google.com with SMTP id
 006d021491bc7-5734b893a11so3955923eaf.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 12 Sep 2023 17:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1694564368; x=1695169168; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PfghF8uM8XDGpkVqp5zNnFzbHxUr4fq3CDSPLr1OUm4=;
 b=Ih3g56Cr+TsKzXBbwVnSo+XXBJ2KiR7jA4QKajlzfU9MaBq6e9rc236RjbECixVFMq
 1pNDAiljKxxoEhwuIVD9jK4HKgplZx+1xBXomuoNt+wNvqne7wMug0b5YHPPI+iMktR3
 L89avB1yDyqSG+cdrIdPROu5FcSVqXo2KTLI35z6c7MjngAVSQIm7qgGgGnRrLtR367g
 yvT/bKUqFXFwuU3eOz0ZGJ1nA85fY6d4ELdE1vPJoT9EZjxVQduEpaEMCpZ3+7s16Q3J
 LLldhaCgXuzaPrCPj3INQ4tpGwUc9zpQJGOV0zKUH7M3P4+ndRGa4KTrRKMpixk7YXmg
 1RGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694564368; x=1695169168;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=PfghF8uM8XDGpkVqp5zNnFzbHxUr4fq3CDSPLr1OUm4=;
 b=V4VIMd/6ayt9Tczpn32nEG0Mqy9jQfSQRGNWfoklbMRDmKOVF3B8ldRvKG9SYE/5Ra
 LkJwE9C5enmc0v9w0REv3YoC+vXKknsBWRQcTP656eUEEgOvLeMdFtZ4nJXC8+k3TI//
 q59PzUJYnnHUY435bxjRC/XKFfHeZGcFGEbnpEBaddWJl7jKecjrCqztEr3ZXjVe4HH0
 3OOM7Fw/bepIpgfpayvl+9E7N66WqS+BlZUMF7Nx+X8fmQ4K0BLoiJQk/BTrPhNxM72M
 GJI2bqMrWD0c3Pkah5w/FnOvC2QfXzbWSTpR8jxKu4oIxf03gnUFmPter9vnlkBbcZ/P
 WuUw==
X-Gm-Message-State: AOJu0YyX2zN59yBJzsRXZ5rIZBSiNCqVBwY5u/12A8BOrM82XbVd2dW6
 E0yZPQlBB5YcWX+JkSxu5g==
X-Google-Smtp-Source: AGHT+IEBrNjwofXj6G2wwq3+fhWd4+Zn4fUTHi6Gsb1GQmmfdRCAV8o1YXWULOlI5YyVG6stpJilMQ==
X-Received: by 2002:a4a:9cd6:0:b0:56e:4dea:bc5c with SMTP id
 d22-20020a4a9cd6000000b0056e4deabc5cmr1246154ook.8.1694564368168; 
 Tue, 12 Sep 2023 17:19:28 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 a42-20020a4a98ad000000b0057327cecdd8sm4871916ooj.10.2023.09.12.17.19.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Sep 2023 17:19:27 -0700 (PDT)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:be75:f593:c65b:4578])
 by serve.minyard.net (Postfix) with ESMTPSA id EB8A41800E8;
 Wed, 13 Sep 2023 00:19:26 +0000 (UTC)
Date: Tue, 12 Sep 2023 19:19:25 -0500
From: Corey Minyard <minyard@acm.org>
To: Justin Stitt <justinstitt@google.com>
Message-ID: <ZQEADYBl0uZ1nX60@mail.minyard.net>
References: <20230912-strncpy-drivers-char-ipmi-ipmi-v1-1-cc43e0d1cae6@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230912-strncpy-drivers-char-ipmi-ipmi-v1-1-cc43e0d1cae6@google.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 12, 2023 at 11:43:05PM +0000, Justin Stitt wrote:
 > `strncpy` is deprecated for use on NUL-terminated destination strings [1].
 > > In this case, strncpy is being used specifically for its [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.41 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.41 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qgDbR-0000Gg-Nq
Subject: Re: [Openipmi-developer] [PATCH] ipmi: refactor deprecated strncpy
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Sep 12, 2023 at 11:43:05PM +0000, Justin Stitt wrote:
> `strncpy` is deprecated for use on NUL-terminated destination strings [1].
> 
> In this case, strncpy is being used specifically for its NUL-padding
> behavior (and has been commented as such). We can use a more robust and
> less ambiguous interface in `strscpy_pad` which makes the code more
> readable and even eliminates the need for that comment.
> 
> Let's also use `strnlen` instead of `strlen()` with an upper-bounds
> check as this is intrinsically a part of `strnlen`.
> 
> Also included in this patch is a simple 1:1 change of `strncpy` to
> `strscpy` for ipmi_ssif.c. If NUL-padding is wanted here as well then we
> should opt again for `strscpy_pad`.
> 
> Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings [1]
> Link: https://github.com/KSPP/linux/issues/90
> Cc: linux-hardening@vger.kernel.org
> Cc: Kees Cook <keescook@chromium.org>
> Signed-off-by: Justin Stitt <justinstitt@google.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 11 +++--------
>  drivers/char/ipmi/ipmi_ssif.c       |  2 +-
>  2 files changed, 4 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 186f1fee7534..04f7622cb703 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -5377,20 +5377,15 @@ static void send_panic_events(struct ipmi_smi *intf, char *str)
>  
>  	j = 0;
>  	while (*p) {
> -		int size = strlen(p);
> +		int size = strnlen(p, 11);
>  
> -		if (size > 11)
> -			size = 11;
>  		data[0] = 0;
>  		data[1] = 0;
>  		data[2] = 0xf0; /* OEM event without timestamp. */
>  		data[3] = intf->addrinfo[0].address;
>  		data[4] = j++; /* sequence # */
> -		/*
> -		 * Always give 11 bytes, so strncpy will fill
> -		 * it with zeroes for me.
> -		 */
> -		strncpy(data+5, p, 11);
> +
> +		strscpy_pad(data+5, p, 11);

This is incorrect, the destination should *not* be nil terminated if the
destination is full.  strncpy does exactly what is needed here.

A comment should be added here, this is not the first time this has been
brought up.

>  		p += size;
>  
>  		ipmi_panic_request_and_wait(intf, &addr, &msg);
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index 3b921c78ba08..edcb83765dce 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -1940,7 +1940,7 @@ static int new_ssif_client(int addr, char *adapter_name,
>  		}
>  	}
>  
> -	strncpy(addr_info->binfo.type, DEVICE_NAME,
> +	strscpy(addr_info->binfo.type, DEVICE_NAME,
>  		sizeof(addr_info->binfo.type));

This one is good.

-corey

>  	addr_info->binfo.addr = addr;
>  	addr_info->binfo.platform_data = addr_info;
> 
> ---
> base-commit: 2dde18cd1d8fac735875f2e4987f11817cc0bc2c
> change-id: 20230912-strncpy-drivers-char-ipmi-ipmi-dda47b3773fd
> 
> Best regards,
> --
> Justin Stitt <justinstitt@google.com>
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
