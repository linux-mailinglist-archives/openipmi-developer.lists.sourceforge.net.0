Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 068FE10FEF6
	for <lists+openipmi-developer@lfdr.de>; Tue,  3 Dec 2019 14:40:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ic8Pv-0006Pj-Lh; Tue, 03 Dec 2019 13:40:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1ic8Pu-0006PS-DA
 for openipmi-developer@lists.sourceforge.net; Tue, 03 Dec 2019 13:40:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PWU/7wWJMqFgQOzJgxgiFIVxjVPFwmXizK0TOekZqDg=; b=k7bmBgG+IDAv9/qlJfqKJLkuK1
 Y7Ohf9Aybg/1SXzoLq/z7zRtFDW10ipB4ZBQezhqVJPQI5/4ETpYxETBHPV52LxGPZPTqPM54Wz0D
 HaGjOrmy8LREpDbJ/l85G1C0I1V2EQW/1bpPKjjxAa1H7E0UvJmS6GHNShIbFfrZmD38=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PWU/7wWJMqFgQOzJgxgiFIVxjVPFwmXizK0TOekZqDg=; b=RHHpj7xTOzJXkJRzVYaL0QgbAy
 ZoM69OZ+uOfets+RXYPUoLxSODyxKTh0JhxbtTfoys86S2wYeAuPBXA0HyiSJLK/H/HNunw4waxuh
 fbANzqLwN+WLbU7LAdoOSQlGGTALJi+9ypzhYQcC5ViGTua+R6HSYYjH9EyDU9qqQ5yk=;
Received: from mail-yb1-f194.google.com ([209.85.219.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ic8Pr-002Nbq-Gn
 for openipmi-developer@lists.sourceforge.net; Tue, 03 Dec 2019 13:40:37 +0000
Received: by mail-yb1-f194.google.com with SMTP id k17so1525881ybp.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 03 Dec 2019 05:40:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PWU/7wWJMqFgQOzJgxgiFIVxjVPFwmXizK0TOekZqDg=;
 b=C1wT1exzI2+JnqAQvtk5yzcIapZj8L6gj8q4NmvEZU6boLKk35ngTnivJE6SSaWttN
 thEPw+fkAmaa6Ye7t/7fSQav4HsPD5z+u1qy01HvbBGa7bc7lyCUNgTm4Xh6D8KK2XbG
 eq8GR+xu6toCsxCSrw9fi02f42jNOlCOdJIUnr3qJ5MQrNmpULkuYoUHL5Hfog4ZA7nq
 DEIH3S3pHNNVfS82/mabk7UDpPbdOIPqA8YkiXlWWA7L6g+mhWT+IFpu856wVa4gPQEu
 rAZ3iSXNY2Sm+PVEAO/drBgBFSK5ubZoyANNhnL+FHbH3v/sn6MTRnKR1KPLy/12jJ12
 g5Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=PWU/7wWJMqFgQOzJgxgiFIVxjVPFwmXizK0TOekZqDg=;
 b=NjBF3W0+K4q1osgcJ8h1rv9wOdLO+qvc6X/WrXGY/Uc8E5HqrtsXD1MCJCJ20d8tq+
 Njpl+vy9iLDy4+l7KuD2ChQs/9aC4obj27a26G8WrCXAEKVUqa8sLojKNxrxPj/1wUYo
 D30xoj/x+U0QRWJBHZwcFjZeL5d+pdMoWveb4zMXMpBRcFG4OGJA5gti5biGqxkLzv8H
 C/v7IrOriPAHnASDCmYqtJ4f2ipwv+JMp9tHBQEoWN88ccEExDcDjS0hZX++8/NEAJOQ
 ur0/DZjHG4Avgszs6tpzHi+1wvfSoZ91G4KhmpXctM7H4WcEkFYH6mu97UNasOO4d13Y
 JEEg==
X-Gm-Message-State: APjAAAWxxf8ZN1MdBVPN+NV6J5YN1lG5R+UWX+dDjtUve9bpQj3/LrMi
 DHzbhZiUvS8YglxszdZIMQ==
X-Google-Smtp-Source: APXvYqzlVb+uzUqOoJ7sKz3DGqmH2x4xZFKhoXvP+qn/NpgdBgUv9H8D7Fy3Mg2T7hXTvflhiXmg6A==
X-Received: by 2002:a25:d052:: with SMTP id h79mr4265588ybg.345.1575380429014; 
 Tue, 03 Dec 2019 05:40:29 -0800 (PST)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id u2sm1451301ywi.61.2019.12.03.05.40.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 05:40:28 -0800 (PST)
Received: from minyard.net (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id 95ED9180059;
 Tue,  3 Dec 2019 13:40:27 +0000 (UTC)
Date: Tue, 3 Dec 2019 07:40:26 -0600
From: Corey Minyard <minyard@acm.org>
To: Andrew Jeffery <andrew@aj.id.au>
Message-ID: <20191203134026.GI18165@minyard.net>
References: <cover.5630f63168ad5cddf02e9796106f8e086c196907.1575376664.git-series.andrew@aj.id.au>
 <84315a29b453068373c096c03433e3a326731988.1575376664.git-series.andrew@aj.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <84315a29b453068373c096c03433e3a326731988.1575376664.git-series.andrew@aj.id.au>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.219.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ic8Pr-002Nbq-Gn
Subject: Re: [Openipmi-developer] [PATCH 2/3] ipmi: kcs: Finish configuring
 ASPEED KCS device before enable
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Haiyue Wang <haiyue.wang@linux.intel.com>, linux-aspeed@lists.ozlabs.org,
 arnd@arndb.de, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Dec 03, 2019 at 11:08:24PM +1030, Andrew Jeffery wrote:
> The currently interrupts are configured after the channel was enabled.

How about:

The interrupts were configured after the channel was enabled, configure
them before so they will work.

-corey

> 
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> Reviewed-by: Joel Stanley <joel@jms.id.au>
> Reviewed-by: Haiyue Wang <haiyue.wang@linux.intel.com>
> ---
>  drivers/char/ipmi/kcs_bmc_aspeed.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c b/drivers/char/ipmi/kcs_bmc_aspeed.c
> index 3c955946e647..e3dd09022589 100644
> --- a/drivers/char/ipmi/kcs_bmc_aspeed.c
> +++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
> @@ -268,13 +268,14 @@ static int aspeed_kcs_probe(struct platform_device *pdev)
>  	kcs_bmc->io_inputb = aspeed_kcs_inb;
>  	kcs_bmc->io_outputb = aspeed_kcs_outb;
>  
> +	rc = aspeed_kcs_config_irq(kcs_bmc, pdev);
> +	if (rc)
> +		return rc;
> +
>  	dev_set_drvdata(dev, kcs_bmc);
>  
>  	aspeed_kcs_set_address(kcs_bmc, addr);
>  	aspeed_kcs_enable_channel(kcs_bmc, true);
> -	rc = aspeed_kcs_config_irq(kcs_bmc, pdev);
> -	if (rc)
> -		return rc;
>  
>  	rc = misc_register(&kcs_bmc->miscdev);
>  	if (rc) {
> -- 
> git-series 0.9.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
