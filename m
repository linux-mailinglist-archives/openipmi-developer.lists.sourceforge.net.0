Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7F277D48C
	for <lists+openipmi-developer@lfdr.de>; Tue, 15 Aug 2023 22:46:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qW0w9-00084T-Gz;
	Tue, 15 Aug 2023 20:46:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1qW0w7-00084M-PR
 for openipmi-developer@lists.sourceforge.net;
 Tue, 15 Aug 2023 20:46:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VaIHc+gFTv/gCTaNkA6eGeAJslVqFsij3m6nG8kuwbQ=; b=gjat7jfms8WeLWO+34lt7ud6z3
 ci69oPLdXxLBCo3nOqrqVweRf+cFExVcjZdVylCY+fYTEGueh1qI9qzwCAkvUoc12zER8ay0tts0M
 kRkmL761P1h4mGt4tE5L8W2y296rZIDB+J8KQF5oDXJrdLkdchTZQfuhQcsvrkEOVwvg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VaIHc+gFTv/gCTaNkA6eGeAJslVqFsij3m6nG8kuwbQ=; b=S+t7uWmPomjUAdeHtBA4S8xOPx
 FKAKxY6R7G73mXYbVMsflIcksJbYEqPwn/rrEOF1/ul8NELXBwFlYrM9V3n0/s1C4CBiNnqkIADv3
 XMZt+mRQO/st5NztMAbBSwStm4Cc6il7euX8xXoUWbFLzsnK1Vg1yN1ciXlZYLl1TSu0=;
Received: from mail-oa1-f53.google.com ([209.85.160.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qW0w6-006Zwj-GJ for openipmi-developer@lists.sourceforge.net;
 Tue, 15 Aug 2023 20:46:44 +0000
Received: by mail-oa1-f53.google.com with SMTP id
 586e51a60fabf-1c50438636fso1535422fac.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 15 Aug 2023 13:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1692132397; x=1692737197;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=VaIHc+gFTv/gCTaNkA6eGeAJslVqFsij3m6nG8kuwbQ=;
 b=BtUF+COVfEoHH4ObDCfa8UZniGPU0b3si4iqFKuVip+tVxTiT7c+k5vhwcSpRM2qVv
 e/fD581IC9g0wfwo7Hw5lmY9O4uTBEkiAXviNuLyaSWP5oMvm9n/ElQ5/k4q5tSZdrd6
 7XNtl36ytsmoedPMWeDPK32he8IXGNeGXKFeOb65ptuniXMm47nJpqSw4VA50AWZWdAE
 5aril4u1K7Q9Q/ncBbuGZPlqTrWIquwBOSFmQeEOOo5izk57QXjpXTQmxlZe/jM/xiwF
 fTkZvfsL9QsDm332StnxKO7pAA98yeWeiXNRzNI/CrCeR1otZ50L+HSj/zwCVNmoohZI
 +Nyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692132397; x=1692737197;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=VaIHc+gFTv/gCTaNkA6eGeAJslVqFsij3m6nG8kuwbQ=;
 b=ddch5pj0bDzfCBcNh7N0eTF9Lr7pj+JQ2df/K6rV0Wj6MKZLbZ1Jn53QkBvBuOfcgx
 cvhRuTy6gq2wBgjPN0NnCZFxcaxtVRaEroDuRGcc46xBHSrUsslr2hqnW1mZ2cqmpdcO
 gyEkSDWqvzSGLkbgZEsb3F8fRKagg9Au6BcDC7biMTX/Iic+96EkqWGpBzBwutMbQfhz
 yO3jVZ7MLM2syEIdY1ghm54uHFqJQPGqgrldaZb+rWkQT3Kh8Oh1qgzHjTPXe2jgiMDc
 dX79mix0F6XIgeXkySxuq1HVSQdCM8G7f58WzYZOsM06fv2kIzNVKVYh1ocJ5Z8pr50g
 RDqg==
X-Gm-Message-State: AOJu0Yz9dZI2ZE2JCEAh3o0or8ULy7R+OUybIwdTluL3odjdQ4zInuz5
 hmRGiFeylp5GFKt0Bu5zNg==
X-Google-Smtp-Source: AGHT+IGIcu+xaJ09yTpMfBilaQOCvslUE7RUnQyVistmiDU9ejNDPAdGiWvFAJ3utTuKFPtcgU7wpw==
X-Received: by 2002:a05:6870:601b:b0:1c3:c43d:838 with SMTP id
 t27-20020a056870601b00b001c3c43d0838mr15178841oaa.39.1692132396755; 
 Tue, 15 Aug 2023 13:46:36 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 ef38-20020a0568701aa600b001c4b8a9ef88sm4779365oab.24.2023.08.15.13.46.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Aug 2023 13:46:35 -0700 (PDT)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:77ae:9090:5436:3099])
 by serve.minyard.net (Postfix) with ESMTPSA id 91B5C1800E8;
 Tue, 15 Aug 2023 20:46:34 +0000 (UTC)
Date: Tue, 15 Aug 2023 15:46:33 -0500
From: Corey Minyard <minyard@acm.org>
To: Justin Stitt <justinstitt@google.com>
Message-ID: <ZNvkKReuMsDCktsH@mail.minyard.net>
References: <20230809-cbl-1902-v1-1-92def12d1dea@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230809-cbl-1902-v1-1-92def12d1dea@google.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Aug 09, 2023 at 09:05:17PM +0000, Justin Stitt wrote:
 > With W=1 we see the following warning: > > |
 drivers/char/ipmi/ipmi_si_platform.c:272:15:
 error: \ > | cast to smaller integer type 'enu [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.53 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.53 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1qW0w6-006Zwj-GJ
Subject: Re: [Openipmi-developer] [PATCH] ipmi_si: fix
 -Wvoid-pointer-to-enum-cast warning
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
Cc: kernel test robot <lkp@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Tom Rix <trix@redhat.com>, llvm@lists.linux.dev,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Nathan Chancellor <nathan@kernel.org>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Aug 09, 2023 at 09:05:17PM +0000, Justin Stitt wrote:
> With W=1 we see the following warning:
> 
> |  drivers/char/ipmi/ipmi_si_platform.c:272:15: error: \
> |       cast to smaller integer type 'enum si_type' from \
> |       'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]
> |    272 |         io.si_type      = (enum si_type) match->data;
> |        |                           ^~~~~~~~~~~~~~~~~~~~~~~~~~

Ok, this is included in my tree.  Thanks.

-corey

> 
> This is due to the fact that the `si_type` enum members are int-width
> and a cast from pointer-width down to int will cause truncation and
> possible data loss. Although in this case `si_type` has only a few
> enumerated fields and thus there is likely no data loss occurring.
> Nonetheless, this patch is necessary to the goal of promoting this
> warning out of W=1.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1902
> Link: https://lore.kernel.org/llvm/202308081000.tTL1ElTr-lkp@intel.com/
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Justin Stitt <justinstitt@google.com>
> ---
> Note:
> Arnd had mentioned that there perhaps may be some semantic differences
> between GCC and Clang regarding this warning or family of warnings. For
> now, this patch (and others following) will yield less noisy W=1 builds
> and hopefully materialize into this warning getting promoted out of W=1
> to an always-on warning.
> ---
>  drivers/char/ipmi/ipmi_si_platform.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_si_platform.c b/drivers/char/ipmi/ipmi_si_platform.c
> index 505cc978c97a..0d509d683c0f 100644
> --- a/drivers/char/ipmi/ipmi_si_platform.c
> +++ b/drivers/char/ipmi/ipmi_si_platform.c
> @@ -269,7 +269,7 @@ static int of_ipmi_probe(struct platform_device *pdev)
>  	}
>  
>  	memset(&io, 0, sizeof(io));
> -	io.si_type	= (enum si_type) match->data;
> +	io.si_type	= (unsigned long) match->data;
>  	io.addr_source	= SI_DEVICETREE;
>  	io.irq_setup	= ipmi_std_irq_setup;
>  
> 
> ---
> base-commit: c1a515d3c0270628df8ae5f5118ba859b85464a2
> change-id: 20230809-cbl-1902-7532a747b731
> 
> Best regards,
> --
> Justin Stitt <justinstitt@google.com>
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
