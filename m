Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC811A659E
	for <lists+openipmi-developer@lfdr.de>; Mon, 13 Apr 2020 13:32:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jNxKT-0000bt-I0; Mon, 13 Apr 2020 11:32:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jNxKR-0000bl-Kf
 for openipmi-developer@lists.sourceforge.net; Mon, 13 Apr 2020 11:32:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Yjxhwc7xO8dRTa7YxVKX58/8YD5/oKTDwOCqnBzm3qo=; b=OnR/J20gQ8b1ItO41dAtLZAqM4
 1qkakBUPF329D40HT3D1cTMIw6j6IgER44cG8eNbj5Q3Mhz3fE2GEAJHgcXDVsD9n54fdlOt/vLq5
 z9pExkda4wVJejuFE5K4rHZ7dZLU2TgSxhamHi5Fc4MTaWPh8XCfHajqfYIDsVxXCik0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Yjxhwc7xO8dRTa7YxVKX58/8YD5/oKTDwOCqnBzm3qo=; b=B2NIE+TfaGFGx+CoODjHDl4ule
 JKve1kGIMRb6XUGN74bkVVALUzDV3DxXaP1ceGX/RFWYQ45vDeimppbSRSr5Y/sQ+21eC9JN9VgJh
 NFIqkmA505iCNJmyv6hvhF+lzawg/sgK4sIHMQUFXvY713RZ36JLZtSBgT0wYTYTuv9I=;
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jNxKM-00EOGC-6I
 for openipmi-developer@lists.sourceforge.net; Mon, 13 Apr 2020 11:32:39 +0000
Received: by mail-oi1-f196.google.com with SMTP id m14so7124849oic.0
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 13 Apr 2020 04:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Yjxhwc7xO8dRTa7YxVKX58/8YD5/oKTDwOCqnBzm3qo=;
 b=Zo1oRY57tv4YrwtBlQ7gS8Od+a4xDPlozTzEdvBL1kO22irGRWxUGWxM79Te+9SolO
 nhzNRltFYj6zEufhIbhWHRlJmgq0VPMNlhQAJdm0UMKcWCXHSQZj0b9kYIDruh/jGbhl
 PYzOyMTx1K4iuEw2TBjefrgspIZbo7TZtpgCVazbuqsFswnaN5aXc+p5XQKWfJJ8FkzC
 Kid4Uopgf9ZeRj42Eg26Q0n/93ihPgP74oALMV0VNmePO+n8BVLAfoEClXNaJiUksKKV
 RUE1UDZCsdDSEGFsIsR+MJRjOrBdNK8+O+eYzVsGxhQUxinzXYjGOhKOjkEr5LdM58Sp
 RXeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=Yjxhwc7xO8dRTa7YxVKX58/8YD5/oKTDwOCqnBzm3qo=;
 b=eGklTDffEmDD/9w68CwGt7uIzn5qieQwMefWrHtF0mAwI1fXTSaaMMr2pq3ZhN1ju8
 f9U9rV9MAOEaiWaAdsS2m/9jU6zoGXhGn7Jy2cn/k+xm2aIclp2LR+Py/Itpkx4ozrsA
 8Vfnpvr1hTWH1PJVlJNFJm6T0/k46rrdkMvahpwitO7fQz3jiwMKsUeLal51NA+CWddt
 pH0eipW1pJTQhKiq1SADk/JEv9F8YAZ9f27zb1/k69ymGp/K99+OuTh7QiMtIEWbzGMu
 nGtHuutmGXdCcBSr7/+iKyhdXCoANdJauzqSE4BAz2lSZ1zPc+krLcarMOCny2Jor3Qk
 3Qvw==
X-Gm-Message-State: AGi0PuYbS6VGXjxTH+PWLQYKKNehQnLZbreeZj32FChKn/l2oSB1jWb8
 azRhUtlyZ35dSKTCl3yXuuBHFI8aSQ==
X-Google-Smtp-Source: APiQypKwLilEFG0hFelMFqiOXPyzs1c/25/gdgVN8sZrJK+uma2ezsGDVkVQ/p0ZneKQB02NJQPmEw==
X-Received: by 2002:a54:4f0a:: with SMTP id e10mr11539844oiy.127.1586777548305; 
 Mon, 13 Apr 2020 04:32:28 -0700 (PDT)
Received: from serve.minyard.net ([47.184.149.130])
 by smtp.gmail.com with ESMTPSA id i9sm4361897otf.1.2020.04.13.04.32.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 04:32:27 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id 69A5C18016D;
 Mon, 13 Apr 2020 11:32:26 +0000 (UTC)
Date: Mon, 13 Apr 2020 06:32:25 -0500
From: Corey Minyard <minyard@acm.org>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Message-ID: <20200413113225.GB3587@minyard.net>
References: <20200408115958.2848-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408115958.2848-1-tangbin@cmss.chinamobile.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jNxKM-00EOGC-6I
Subject: Re: [Openipmi-developer] [PATCH v3]ipmi:bt-bmc:Avoid unnecessary
 judgement
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
 linux-kernel@vger.kernel.org, arnd@arndb.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Apr 08, 2020 at 07:59:58PM +0800, Tang Bin wrote:
> bt_bmc_probe() is only called with an openfirmware platform device.
> Therefore there is no need to check that the passed in device is NULL or
> that it has an openfirmware node.

I waited until after the merge window closed, this is queued for 5.8.  I
changed the title to be "Avoid unnecessary check".  "Judgement",
although technically correct, has a legal or moral connotation.

Thanks,

-corey

> 
> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
> ---
> Changes from v2:
>  - improve the commit message.
> 
> Changes from v1:
>  - improve the commit message.
> ---
>  drivers/char/ipmi/bt-bmc.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
> index d36aeacb2..890ad55aa 100644
> --- a/drivers/char/ipmi/bt-bmc.c
> +++ b/drivers/char/ipmi/bt-bmc.c
> @@ -430,9 +430,6 @@ static int bt_bmc_probe(struct platform_device *pdev)
>  	struct device *dev;
>  	int rc;
>  
> -	if (!pdev || !pdev->dev.of_node)
> -		return -ENODEV;
> -
>  	dev = &pdev->dev;
>  	dev_info(dev, "Found bt bmc device\n");
>  
> -- 
> 2.20.1.windows.1
> 
> 
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
