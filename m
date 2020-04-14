Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 213131A8B58
	for <lists+openipmi-developer@lfdr.de>; Tue, 14 Apr 2020 21:45:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jORUe-0005yS-AK; Tue, 14 Apr 2020 19:45:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jORUa-0005xt-GX
 for openipmi-developer@lists.sourceforge.net; Tue, 14 Apr 2020 19:45:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Sse3YVjmkw8Kxhj4W0BzsXVTXj+DMzOM5AWzuhlcxPw=; b=C+Vg+BRCFyI3Tyu187sYHNNrud
 bc9MG3JAoYqGPFzlBNwhHX6wXXiP9YsuLwRvATp8ooQNtfYezEMqRxPqhCv3rDYlic1+2Oz/nmu1O
 LW1xDsagKY3Hm2hF6oCgjCd1QInqF0cDkCAlPtDk0WoFuqDvsP1Xv+7v6cWsNZOCaWAY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Sse3YVjmkw8Kxhj4W0BzsXVTXj+DMzOM5AWzuhlcxPw=; b=J2nF0m+SJ8WIJs05Fy296HesyX
 mgCtLwGndu2K3OO44SlJ5BjlkTHYY2T49I2cjKU4owdY37UbSTfKAFtHBpBuJgGyrBQT7J/h+Ac5Z
 uHisoP7c1P/0hb1bUZvK+dWPqx1VpG6bDEHa3+Nc5HNrHNYzxZhKykZA3/+Rn4o61Dyc=;
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jORUW-00GNCB-FN
 for openipmi-developer@lists.sourceforge.net; Tue, 14 Apr 2020 19:45:07 +0000
Received: by mail-oi1-f194.google.com with SMTP id o25so11477217oic.11
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 14 Apr 2020 12:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Sse3YVjmkw8Kxhj4W0BzsXVTXj+DMzOM5AWzuhlcxPw=;
 b=dMLK5QR7kXyYrreXVqY0/IEcHw0kXYcBBas7vj2arYyVzQYQRqWksNpKDzIowinfyJ
 QNZz4rosnFYul6H/+vvskzpN+KTiOpk0+GTL0XEfd6E9WlicaGqzKqhrnodt372nnYVv
 4VrAfhyqF4LsT21KKhhBKAm/SFeinRnYS45YprOjuOH2+UvTuxiI6bxHxtoQVh5bMW0n
 qiIpA3RJ34PsGh8Ns+35S+UsRvTy2ScfGlTgfK6tf2LMsMpPo8Gf7oijLMuXRgwkzaXc
 PsVNcXSXKW+NNTmFL8llSdDNpLqAVaKEA40yjvlgDlfrtAFoCAEmM6xHoCSH2kmBgRUM
 I7Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=Sse3YVjmkw8Kxhj4W0BzsXVTXj+DMzOM5AWzuhlcxPw=;
 b=uOck7XcVVwLCBtdp7UjSSP5XkiudE+juml+YLfSCBebNL0TYLCt83ZNSSI7uGz15z6
 c9bM6LubTLVD3juzGXDbJMI+XCVvfOba9WYWBowd9DzdImF9bpG5gRE/iMjv1yngkJLK
 8gXvWnDAWStYZ6tVdV/9DmMtZEMjVuyecgvvN+JF/YHsiWtOqokMBbH9lhPhrCvyuEPu
 vtbaZoIG2XFp/aQxwzLv4Mw5t2+Y2U5MkWbwoMr7rR8LrVzEsGbID8STB6vJOg6Ommw4
 cq5hLdjTQd6HfLvAdXHdfN64W4ZKqyuQfcykg0zgJ8G5sja9XF+1nLLG5MAK9t2bN87D
 qj4g==
X-Gm-Message-State: AGi0PuZd6fGtcOpN6JKZR92sVtgkl2LZ1CacVj34srrGKj8rLg9J9MBd
 V5X4ixlz5yIhC80ufsQ0vTwXEoXb3w==
X-Google-Smtp-Source: APiQypL7gIovUtkdhOS8jiMCup5q6jBnTpjqNKNfhnnWTz2gZvNa9d8otokGawTqRpoo5N7qOHaRiA==
X-Received: by 2002:aca:4085:: with SMTP id n127mr1320346oia.62.1586893498335; 
 Tue, 14 Apr 2020 12:44:58 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id e14sm6308381oop.42.2020.04.14.12.44.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 12:44:57 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id 81257181888;
 Tue, 14 Apr 2020 19:44:56 +0000 (UTC)
Date: Tue, 14 Apr 2020 14:44:55 -0500
From: Corey Minyard <minyard@acm.org>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Message-ID: <20200414194455.GH3587@minyard.net>
References: <20200414141951.19120-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414141951.19120-1-tangbin@cmss.chinamobile.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chinamobile.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jORUW-00GNCB-FN
Subject: Re: [Openipmi-developer] [PATCH] ipmi:bt-bmc: Delete superfluous
 dev_warm() in bt_bmc_config_irq()
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
Cc: gregkh@linuxfoundation.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, arnd@arndb.de,
 Shengju Zhang <zhangshengju@cmss.chinamobile.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Apr 14, 2020 at 10:19:51PM +0800, Tang Bin wrote:
> The priority of dev_warm() is higher than dev_info(),so if the
> function bt_bmc_probe() uses dev_info() to print error message,
> the dev_warm() is redundant.Thus should be removed.

Actually, this needs to be left in.  That error is not just a that irqs
were not configured, that's an error that something else went wrong.


-corey

> 
> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
> Signed-off-by: Shengju Zhang <zhangshengju@cmss.chinamobile.com>
> ---
>  drivers/char/ipmi/bt-bmc.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
> index cd0349bff..1d4bf5c65 100644
> --- a/drivers/char/ipmi/bt-bmc.c
> +++ b/drivers/char/ipmi/bt-bmc.c
> @@ -406,7 +406,6 @@ static int bt_bmc_config_irq(struct bt_bmc *bt_bmc,
>  	rc = devm_request_irq(dev, bt_bmc->irq, bt_bmc_irq, IRQF_SHARED,
>  			      DEVICE_NAME, bt_bmc);
>  	if (rc < 0) {
> -		dev_warn(dev, "Unable to request IRQ %d\n", bt_bmc->irq);
>  		bt_bmc->irq = 0;
>  		return rc;
>  	}
> -- 
> 2.20.1.windows.1
> 
> 
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
