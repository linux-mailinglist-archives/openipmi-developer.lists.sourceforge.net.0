Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A1E77988A
	for <lists+openipmi-developer@lfdr.de>; Fri, 11 Aug 2023 22:27:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qUYjV-0002p8-W8;
	Fri, 11 Aug 2023 20:27:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1qUYjU-0002ot-1J
 for openipmi-developer@lists.sourceforge.net;
 Fri, 11 Aug 2023 20:27:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0UbK4nnymHvPms4qLxQwbH3NM35gMPbEu4WBWUEgE1g=; b=mU1y5TxS5UpBBmZxERuIsaRbsz
 L1fORI9ckQfzm0r1gs/uuvGHGDxwx8VRIxBgX+lFNcUtQX9WM3RSh8ZpEHOQNZdwItO3QS/weR5Kx
 r10Lhtp567FHshb8Vd/ONfvIOvu1VXmkq+Y/4hVC03+1FVwHjQ84i3p73wDWOyBMqstE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0UbK4nnymHvPms4qLxQwbH3NM35gMPbEu4WBWUEgE1g=; b=PzMikh2ZjVWeYzqlGBd4jqSMwt
 l2L3q27/S+xNyZCqBp4wbJVrw5AsTESmg774pvILD1ieoLcGpTCrQTDJwBQKQQvGi9ZVN/tS4ggWN
 FHMPgUIuEm5ccVT7gNOsSrV5KD/IlqAkR1ed/MfhVz4+TJzJprGxt3EZYTbO0WAAaVX8=;
Received: from mail-yw1-f179.google.com ([209.85.128.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qUYjO-0004z9-Hs for openipmi-developer@lists.sourceforge.net;
 Fri, 11 Aug 2023 20:27:38 +0000
Received: by mail-yw1-f179.google.com with SMTP id
 00721157ae682-58688a0adbbso26121507b3.0
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 11 Aug 2023 13:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1691785647; x=1692390447;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0UbK4nnymHvPms4qLxQwbH3NM35gMPbEu4WBWUEgE1g=;
 b=o7DUElapNyvjmyACrVVOC7+p6ZhVxbT+HsfcVJ6xyq28u+Dhi7Ru9ReuEGNdkOyFnU
 XjZSESoC1/pAOPLHT/2ElG6/JM2ngkQyoiYCdchEJreGZvjKcOwDbB96ctiZwwb1+mzU
 8r9ob4k+1OxsY5EIJEKP2Mf9MPF5fNIrjQxdtn2F81CuB3qbEkgMl8Db2dxZ5uiYt2aM
 a/3s2CUllV78jDpS/UGf/MVZtJN440MTANe5E9lh+3zSMI67qVyueE/IZAXFY5bqAdkr
 ZdICJj/5Er3Vk0NW4nrHc/J7g1hu124/N9Xockd+puGL6F8r9BcBPH7JJEkkhXfq1uc4
 3BVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691785647; x=1692390447;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=0UbK4nnymHvPms4qLxQwbH3NM35gMPbEu4WBWUEgE1g=;
 b=hOQug1DblQeNg1RbDHxjt57qanq6I7fDtpkhhsAjFJeZnMYwuGdbDxEMrtDehkD7IV
 9b4PhGY0Pzvr/Ibv6r2gJrBKuQ+Ui4RJL+L9lkR4h8M0HF56by/94W0roH+rmp3t1FWF
 TjVvnZd91hylNI3VqpDn+8RHuJtHv949O78dcI5UhwbKjWznyhzeB+CT/Ru3CTZtfn1g
 tFjtQn5tc9eiPqCdorWsm/TPG9lb9qOS6RemhVhfcyQd0SmluKvWNNCXyDuJUxVOV8TQ
 P0bzPe8K0k8KkOioqjxXAbEu2n3Oow8nBBDqonjZUiw6GpjOD5mxf2HohgNZQawrsLeq
 aF3w==
X-Gm-Message-State: AOJu0YzFY+FejTh0sVUvlWR7wMNd2+cyS9LPISR1DspM6J/Hl2dBvmQF
 3AVk7AxmnyU3SYtcw44kkg==
X-Google-Smtp-Source: AGHT+IEVW3hz+iAn9LZuVHgGCUAJz9pTjM8+y7T/OfekbKp6pqC7IRoYZBPbj3XM/hqz7mROvhV5yA==
X-Received: by 2002:a0d:f941:0:b0:583:523e:6569 with SMTP id
 j62-20020a0df941000000b00583523e6569mr2706967ywf.17.1691785647070; 
 Fri, 11 Aug 2023 13:27:27 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 y6-20020a818806000000b0057736c436f1sm1203438ywf.141.2023.08.11.13.27.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Aug 2023 13:27:26 -0700 (PDT)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:e34a:4ada:ffd0:e7ff])
 by serve.minyard.net (Postfix) with ESMTPSA id 5FB071800E8;
 Fri, 11 Aug 2023 20:27:25 +0000 (UTC)
Date: Fri, 11 Aug 2023 15:27:24 -0500
From: Corey Minyard <minyard@acm.org>
To: Justin Stitt <justinstitt@google.com>
Message-ID: <ZNaZrHEs5FP7Lf8A@mail.minyard.net>
References: <20230809-cbl-1902-v1-1-92def12d1dea@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230809-cbl-1902-v1-1-92def12d1dea@google.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 no trust [209.85.128.179 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.179 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1qUYjO-0004z9-Hs
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

Wouldn't you want to use intptr_t or uintptr_t?

-corey

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
