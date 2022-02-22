Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5578A4BFFC6
	for <lists+openipmi-developer@lfdr.de>; Tue, 22 Feb 2022 18:08:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nMYeN-0006cQ-SB; Tue, 22 Feb 2022 17:08:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1nMYeK-0006cK-1G
 for openipmi-developer@lists.sourceforge.net; Tue, 22 Feb 2022 17:08:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nuGaAIrCseol+Fc4b+DrJ6QDiHub8pJu+jamdzXOWwI=; b=TBnmXc5bZVQlo63+IhDpJwv2j8
 W0YpzkpHeEPXa2gvonLTRlPczfjaqQIkWmRdgkGhB2oONKFqQoyhMLew9ricTdRpdKzOUcT1b46tv
 2qOpq9Me3D+6W/Lc+cuT3xwWe7WiBVmHvRMEieIETeqcdWunAtkBBdfs6KdRwUzE6jjw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nuGaAIrCseol+Fc4b+DrJ6QDiHub8pJu+jamdzXOWwI=; b=N8F+VWRuoSR7o6fuEQ6jSnIphb
 I4aLpJcBCZ8sKaOZXaytLqdbZn4j2no52qgXvvvacGNomJdnFw/X6WQnpXvlrd91ZVNbeHjiO+cs8
 ITzHlOQt3CPGQNP6JRGA2jUWO+fC7Ri0F9+O8pOtNzFGZdJgX1XBx2zhVrdBI8LNHoUw=;
Received: from mail-qv1-f44.google.com ([209.85.219.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nMYeG-00BV0u-QF
 for openipmi-developer@lists.sourceforge.net; Tue, 22 Feb 2022 17:08:26 +0000
Received: by mail-qv1-f44.google.com with SMTP id d3so736169qvb.5
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 22 Feb 2022 09:08:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=nuGaAIrCseol+Fc4b+DrJ6QDiHub8pJu+jamdzXOWwI=;
 b=h80YQ98h8yT62z8o+QoN9cPHbIv6mXqIqioO9SemIiGmPkcG7QyUUfI2ACOBB/BzyX
 LRQ7h9BBkLoI5vOGjCY27x/1VNRXfwIMQV/bgZ3QUV/K1xYEbIePMTD0VPFr5UNGVnz8
 RxvuJIngl13AxKrIwozTYXxg7srAAb8eV08oqOR2jrh8Lka8xWK+KQDsaYZsXuOakKtd
 4Ivzx+2x7dxDoi6zazpqQDpPcMgFucmunGmPJFKK0fJ4UMHGSgdaIBeS+mqczc60uuNj
 h3UG4oFXiV5WUkfZMCpmkB5EzrfK0J4961Zr03cBk2UGKk2uo3FBPbumdacADnKp+gRd
 KvwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=nuGaAIrCseol+Fc4b+DrJ6QDiHub8pJu+jamdzXOWwI=;
 b=YN6mOrU1sUj/aMm27ZX6cGhAHYHVHUh0+LJDHTC1CxQsznuYTkY0jB7PmL3IUrrJdX
 stXGNNSAFVl2ig/wD099pnrUtEJS0iZw2r+I9FDU+/jY+odZTncH63xpNTdOBc9E/6LR
 XTQM/7mPewddvVIwtjZ8qtyVsyL0+8r8jY2KQlC5dN59HunrG2zxndM0Ji+pnqGGzhDw
 Dz0fzuWy5RcWge76x3O4kyNF1j8JEN7+4TvIm5TFGbMUyQIWa6TiUvRQCmo0/6PK+59Q
 CB+MvIuW0tHmoZKcFg7uVJYIb1hUdsDrTzAivmHzMwl0Se5NmT5eGuezD51fHn8fBSb7
 6T4Q==
X-Gm-Message-State: AOAM533kdZMRr+3/JImEzYnQh/NgZ5mhNXXCX0DbVGMdl3Efck4xvrBJ
 7VfQkBUyDWMmlRUmaS2OzQ==
X-Google-Smtp-Source: ABdhPJxE4DLspCUr0y7PAyDRX8XbJdNjv8bNxj506RlguJ0Ssmbna9oKT/PfLG4F3nwZyu2E0e9HtQ==
X-Received: by 2002:a05:622a:414:b0:2de:4743:ddd3 with SMTP id
 n20-20020a05622a041400b002de4743ddd3mr6400868qtx.594.1645549698861; 
 Tue, 22 Feb 2022 09:08:18 -0800 (PST)
Received: from serve.minyard.net ([47.184.144.75])
 by smtp.gmail.com with ESMTPSA id w4sm75371qko.123.2022.02.22.09.08.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Feb 2022 09:08:18 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:989e:5aa0:e8e6:e813])
 by serve.minyard.net (Postfix) with ESMTPSA id CB9211800B7;
 Tue, 22 Feb 2022 17:08:17 +0000 (UTC)
Date: Tue, 22 Feb 2022 11:08:16 -0600
From: Corey Minyard <minyard@acm.org>
To: Joel Stanley <joel@jms.id.au>
Message-ID: <20220222170816.GU2091156@minyard.net>
References: <20220221070351.121905-1-joel@jms.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220221070351.121905-1-joel@jms.id.au>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Feb 21, 2022 at 05:33:51PM +1030, Joel Stanley wrote:
 > The AST2600 is already described in the bindings, but the driver never
 > gained a compatible string. Thanks, this is in my queue. -corey 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.44 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.44 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1nMYeG-00BV0u-QF
Subject: Re: [Openipmi-developer] [PATCH] ipmi: kcs: aspeed: Add AST2600
 compatible string
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
Cc: Andrew Jeffery <andrew@aj.id.au>, openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Feb 21, 2022 at 05:33:51PM +1030, Joel Stanley wrote:
> The AST2600 is already described in the bindings, but the driver never
> gained a compatible string.

Thanks, this is in my queue.

-corey

> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  drivers/char/ipmi/kcs_bmc_aspeed.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
> index 92a37b33494c..b555286016b1 100644
> --- a/drivers/char/ipmi/kcs_bmc_aspeed.c
> +++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
> @@ -693,6 +693,7 @@ static const struct of_device_id ast_kcs_bmc_match[] = {
>  	{ .compatible = "aspeed,ast2500-kcs-bmc", .data = &of_v1_ops },
>  	{ .compatible = "aspeed,ast2400-kcs-bmc-v2", .data = &of_v2_ops },
>  	{ .compatible = "aspeed,ast2500-kcs-bmc-v2", .data = &of_v2_ops },
> +	{ .compatible = "aspeed,ast2600-kcs-bmc", .data = &of_v2_ops },
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(of, ast_kcs_bmc_match);
> -- 
> 2.34.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
