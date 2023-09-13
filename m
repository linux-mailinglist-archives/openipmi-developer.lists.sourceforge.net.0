Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D373B79F0AF
	for <lists+openipmi-developer@lfdr.de>; Wed, 13 Sep 2023 19:56:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qgU6T-0003Eo-Kt;
	Wed, 13 Sep 2023 17:56:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1qgU6S-0003Ef-M5
 for openipmi-developer@lists.sourceforge.net;
 Wed, 13 Sep 2023 17:56:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uGDdpFKCDnpc+ssHlTq66FORxZksxKD5gAg2WZYxqbQ=; b=GWeqwPZGhJt/ZnUSqZtel3QRpG
 J6bHd4x3uN+t9jsoS3m5v+Idg2NMNFENxbx6LDR6tr16kLJI/KGdTLX5pPEHGVH3KPaYFqgEfDPFo
 DXgGcZd/N/Ot3oLmZmXp21M7YNp0UL06dsNPRJ1+v7Ao7EPySL2AfgznUID18XzmJ77g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=uGDdpFKCDnpc+ssHlTq66FORxZksxKD5gAg2WZYxqbQ=; b=mUC/heOPi16WF3CPJ6WpiMowDC
 gt5m5PhulMZ5SonC9IHzU0J9AvtHSkX9AMMA+C+2RXuPvp8eNMfD9nv9ghXbuE1DXeodN66cRIAF1
 kaZrKvU9nxKEzw5i7pING67Mj1SVCKQ36X55wiLdGbuwB6vmlUDUwGrVeHwRzurZ01EM=;
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qgU6N-0045ku-VG for openipmi-developer@lists.sourceforge.net;
 Wed, 13 Sep 2023 17:56:40 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 46e09a7af769-6bd0a0a6766so48116a34.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 13 Sep 2023 10:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1694627790; x=1695232590; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=uGDdpFKCDnpc+ssHlTq66FORxZksxKD5gAg2WZYxqbQ=;
 b=sw37SzcCAxCleAO3tUbd7vHR9jTTyxN9t/yA/189KyGLEdJYL/rl15tvyVuJ/BFDm2
 f5JpqSzJBcXF8lIuBzwBuYjR1rFnYsQdwcNmniTq9l5S8F8IMBgvPxXBfKf6+H6GlTee
 J9XnEgiMyeolKy4rc8B7padG0sKBBDQTqmE+NuOSTZptQNL2Pqdx6KIWkShNBxKYxrD4
 SKpQUFBIYhKycWJDn/ITMwsMljytPaS+n00arTGprGG5nKh+GOpIUkPY9Llt8uZK1bSV
 dbvmeNKT1xptE379WEJtXMEmcS9CoU9W7AO380Z0XSEYgxoynxRSVPuIn7b1e2qNDa8s
 ezIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694627790; x=1695232590;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=uGDdpFKCDnpc+ssHlTq66FORxZksxKD5gAg2WZYxqbQ=;
 b=MXw+VgpdbWXV7vuyK63zLt+e0whtcgcD1TTTLlv1Yed+iU0IlPeXxPI+hFb/ze6D2u
 pY/3qrKtG5QQPG4edqXCdvZLDbID9MgXmrjKHDqEih5RmozpNBlVxgq+bbwFteRWVtUI
 mIFen6KNwOocPdAqNGjpcL51zkiQMSbLYUFRZaClUEzz01dDSYhe+4OmDNh/DS6DNmfF
 C+ooQTaHb4rKLUE5rjdGWrp8sdywCMwuQmKOxuyFLUUnFmtE5KjoBJDpp1XKjDrOZvBF
 IXfhn5l0Lb/uJcjTXCweISdMQNUBL06g4SD7FoZFtfg1aZ87JvzWNiqSe8zYXUtnL0yS
 JhaA==
X-Gm-Message-State: AOJu0YzDS/3xKskeSrsh7WheoFryKjqJT7yPgCz6q8edByqqLuY6DeVc
 hj4PZ4p4fALatZD+HM4rYg==
X-Google-Smtp-Source: AGHT+IG2h57eZ3z8FOxRhv0xL7TnrcTAAlOuEhAzkitkrKR8R0PBIDXC4CmKXEitdu5knxbKM1n2Iw==
X-Received: by 2002:a9d:4f08:0:b0:6be:fc8b:40fc with SMTP id
 d8-20020a9d4f08000000b006befc8b40fcmr3489799otl.36.1694627790195; 
 Wed, 13 Sep 2023 10:56:30 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 v25-20020a056830141900b006b89dafb721sm5148382otp.78.2023.09.13.10.56.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Sep 2023 10:56:29 -0700 (PDT)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:cad6:f0ef:2bda:cb78])
 by serve.minyard.net (Postfix) with ESMTPSA id CDAA5180108;
 Wed, 13 Sep 2023 17:56:28 +0000 (UTC)
Date: Wed, 13 Sep 2023 12:56:27 -0500
From: Corey Minyard <minyard@acm.org>
To: Justin Stitt <justinstitt@google.com>
Message-ID: <ZQH3y2ONi90A2e8k@mail.minyard.net>
References: <20230913-strncpy-drivers-char-ipmi-ipmi-v2-1-e3bc0f6e599f@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230913-strncpy-drivers-char-ipmi-ipmi-v2-1-e3bc0f6e599f@google.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Sep 13, 2023 at 05:13:04PM +0000, Justin Stitt wrote:
 > `strncpy` is deprecated for use on NUL-terminated destination strings [1].
 Thanks, applied to my next tree. -corey 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.48 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.48 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1qgU6N-0045ku-VG
Subject: Re: [Openipmi-developer] [PATCH v2] ipmi: refactor deprecated
 strncpy
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

On Wed, Sep 13, 2023 at 05:13:04PM +0000, Justin Stitt wrote:
> `strncpy` is deprecated for use on NUL-terminated destination strings [1].

Thanks, applied to my next tree.

-corey

> 
> In this case, strncpy is being used specifically for its NUL-padding
> behavior (and has been commented as such). Moreover, the destination
> string is not required to be NUL-terminated [2].
> 
> We can use a more robust and less ambiguous interface in
> `memcpy_and_pad` which makes the code more readable and even eliminates
> the need for that comment.
> 
> Let's also use `strnlen` instead of `strlen()` with an upper-bounds
> check as this is intrinsically a part of `strnlen`.
> 
> Also included in this patch is a simple 1:1 change of `strncpy` to
> `strscpy` for ipmi_ssif.c. If NUL-padding is wanted here as well then we
> should opt again for `strscpy_pad`.
> 
> Link: https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings [1]
> Link: https://lore.kernel.org/all/ZQEADYBl0uZ1nX60@mail.minyard.net/ [2]
> Link: https://github.com/KSPP/linux/issues/90
> Cc: linux-hardening@vger.kernel.org
> Cc: Kees Cook <keescook@chromium.org>
> Signed-off-by: Justin Stitt <justinstitt@google.com>
> ---
> Changes in v2:
> - use memcpy_and_pad (thanks Corey)
> - Link to v1: https://lore.kernel.org/r/20230912-strncpy-drivers-char-ipmi-ipmi-v1-1-cc43e0d1cae6@google.com
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 11 +++--------
>  drivers/char/ipmi/ipmi_ssif.c       |  2 +-
>  2 files changed, 4 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 186f1fee7534..d6f14279684d 100644
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
> +		memcpy_and_pad(data+5, 11, p, size, '\0');
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
