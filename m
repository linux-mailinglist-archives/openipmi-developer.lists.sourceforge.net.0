Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFF8578F3C
	for <lists+openipmi-developer@lfdr.de>; Tue, 19 Jul 2022 02:26:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oDb4O-0006kA-7w; Tue, 19 Jul 2022 00:26:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1oDb4N-0006k4-1g
 for openipmi-developer@lists.sourceforge.net; Tue, 19 Jul 2022 00:26:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5WGojSzYNyuicqU/p82Pg5ZIp68x6TVpfTqklv6NcTA=; b=O00jz5oy6joeb0Opqy7quw9bMN
 R1pAz4QkW98/s1UlIoZzFqmCYCv+2Lt5EJQiCcnQIyNL/JYiZKBs8YZU9GD+Zhj5ebhqwj6MpDHoK
 AXd16ysi3bUmGSlZYO6FkOcEJka7JhCm0NUvA2f5SMeBcwpnLCtHxd/WfYTw9VYfxb+o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5WGojSzYNyuicqU/p82Pg5ZIp68x6TVpfTqklv6NcTA=; b=Qn5G1rIvOB9oD2K+maOuWTbvtI
 TCLDg28o2VvccDyo8g0sSLGxWpvzDlULXMPKcE/e7wzIse6pLXhYeOUHdsJeovps7FelEl2NzWEqI
 IB8llCm/bD3B70m2AO2hKCoiQXB3ZjT8t+G/gmD4SMd3LzRu8+aIqzpOSwhmmAKENXAY=;
Received: from mail-qv1-f52.google.com ([209.85.219.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oDb4G-003SLo-Qf
 for openipmi-developer@lists.sourceforge.net; Tue, 19 Jul 2022 00:26:33 +0000
Received: by mail-qv1-f52.google.com with SMTP id r12so10071891qvm.3
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 18 Jul 2022 17:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=5WGojSzYNyuicqU/p82Pg5ZIp68x6TVpfTqklv6NcTA=;
 b=qExX/S0T+JQdPWcspHh/S4Km/TLwmfZ5Rp64akVCmZG1V6mUGcaiStB6knxGY21J8n
 OlreIiLTm7/PmKIXHh/sJwRSHHKqtjN6/zL7m9twE9RFK/RKGBj56bJo+csH/yUX8nXh
 LIbRyvAtT+fH+gu6msaBVwtKCkLXvdH1X4GVmDaKBVcLjjxNGRFxVWebKxFJQ5g2jehZ
 MDIQS7QQULfAl6I/UtB+la3ba2gAzjtENLSu0+vjAQeuCnSJ1KcKePjA8sNCvRy0tp/T
 0to/nm182Alx3urrkI7gNBwSwiW4Lz/k2lhwyOlM5WtLhoabTiKNSyZ72z7nX0Q/r0Iv
 DWUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=5WGojSzYNyuicqU/p82Pg5ZIp68x6TVpfTqklv6NcTA=;
 b=VBIlub9qnlQOIbXJWyBStzILnJS2CXYCFFtLzHDgK4/dEC4In22l5WTLuj/CiYfGib
 kEhA3L+g1cEkABp/hS5e6JH1Qcqn3teazRH3mz1Ud7FHFxAeWh+A6uNDgR0ferfndKPC
 xHWKyr+N0P90X6lGLLKroyYyK6aiFpRmeM/LugDA+BK9i8tMeNdM0tAJFzmWAUheV0P4
 /P6vFuGyA1HLVPoNgsm1GrWqEsQ+Ze9nJXfr/fz6+hK07hrEA2D/c+kNVJENn3Kg7KiD
 iFt+XVA529bHu6LPlpaYiDKNtC0ERhJdvm7EUL8Jbj0MP/RdIq+0Dm4P9vfqV6P6hAgV
 hueQ==
X-Gm-Message-State: AJIora/BqAYa0aQoJsbxAhoqDrIDc8P74vAnv+TiNOdzBFJy/nQRIZ5H
 VMgaH0aZLxn0aG1i+NCW+mfUPA7Azg==
X-Google-Smtp-Source: AGRyM1sLWVwk38OJ0szHXdslhKy0W8avKB3g365xeQzNPL+RqzJbCCOdv7yuNr7VPoQGKZ2pc/bP7w==
X-Received: by 2002:a05:6214:624:b0:473:27e8:95d6 with SMTP id
 a4-20020a056214062400b0047327e895d6mr22907776qvx.109.1658190382969; 
 Mon, 18 Jul 2022 17:26:22 -0700 (PDT)
Received: from serve.minyard.net ([47.184.144.75])
 by smtp.gmail.com with ESMTPSA id
 bt14-20020ac8690e000000b0031ef0081d77sm3097587qtb.79.2022.07.18.17.26.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Jul 2022 17:26:22 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:8d92:f4cf:23d:d106])
 by serve.minyard.net (Postfix) with ESMTPSA id 699321800D9;
 Tue, 19 Jul 2022 00:26:21 +0000 (UTC)
Date: Mon, 18 Jul 2022 19:26:20 -0500
From: Corey Minyard <minyard@acm.org>
To: Jason Wang <wangborong@cdjrlc.com>
Message-ID: <20220719002620.GC40038@minyard.net>
References: <20220715054156.6342-1-wangborong@cdjrlc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220715054156.6342-1-wangborong@cdjrlc.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jul 15, 2022 at 01:41:56PM +0800, Jason Wang wrote:
 > The double `the' is duplicated in line 4360, remove one. Applied, thanks.
 -corey Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.52 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1oDb4G-003SLo-Qf
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Fix comment typo
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Jul 15, 2022 at 01:41:56PM +0800, Jason Wang wrote:
> The double `the' is duplicated in line 4360, remove one.

Applied, thanks.

-corey

> 
> Signed-off-by: Jason Wang <wangborong@cdjrlc.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 703433493c85..c8a3b208f923 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -4357,7 +4357,7 @@ static int handle_oem_get_msg_cmd(struct ipmi_smi *intf,
>  
>  			/*
>  			 * The message starts at byte 4 which follows the
> -			 * the Channel Byte in the "GET MESSAGE" command
> +			 * Channel Byte in the "GET MESSAGE" command
>  			 */
>  			recv_msg->msg.data_len = msg->rsp_size - 4;
>  			memcpy(recv_msg->msg_data, &msg->rsp[4],
> -- 
> 2.35.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
