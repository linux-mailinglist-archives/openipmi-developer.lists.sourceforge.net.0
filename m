Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 202F719DE04
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Apr 2020 20:36:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jKRAy-0000tN-2Z; Fri, 03 Apr 2020 18:36:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jKRAg-0000sa-Mi
 for openipmi-developer@lists.sourceforge.net; Fri, 03 Apr 2020 18:36:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OjM07KqdEPzpTKDaPNTVnnzl0Bo0UX8ZWFo9wvgBwFU=; b=lDEyver7z3UN9nYzKF5l1Nvved
 hBkLw1HvrkbyQZqe0yCNCKMViQHV/lmL6ZzqhyUtPl4cuENRrTdhkDfy2NmNgZnQJ2+TkVgs5ddzI
 gOCC+Za10a4VVjwnHMfrRk8/8ZETZsiEP5HvY8ax4uWmxvEmzaLP9Es4gD8fRSEUY7io=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OjM07KqdEPzpTKDaPNTVnnzl0Bo0UX8ZWFo9wvgBwFU=; b=NoajrtNrPvfGt0obRc9oz80tCt
 7bR3OVqCZLL5rzUXpUZRRFikJ1SpdAgjFA2rqYfFMkYqy2vGpXk+tYcvIkMtj3LsLwwjvZ8QIpccd
 HCOVn8C/ZkBSyGiGCBloXjogom0C0JRWLj3Me5ibaN3Ymh6yPkstt105zvBLyg8LHd6I=;
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jKRAd-006HTN-5R
 for openipmi-developer@lists.sourceforge.net; Fri, 03 Apr 2020 18:36:02 +0000
Received: by mail-oi1-f193.google.com with SMTP id u20so6997809oic.4
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 03 Apr 2020 11:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OjM07KqdEPzpTKDaPNTVnnzl0Bo0UX8ZWFo9wvgBwFU=;
 b=J89hODt8wqg9P6qBqRezu4hQ8I16OgFJGhgzHhfxyNHFlubjMFYRh6zBKeiH4kEWWC
 O7TEWT1SAV6aYJctNOy/Todhyg1W8/VdxQHXBlkDXPytZ3oontDmcMDc3028YkA9dcUa
 bXY38+XB2ATPUZp/x5ZHW7hXhWe1r6IxfaZd4ozaTf+tWkS+jpmYwG2kWmU1yUyLN0E6
 8+0SUVKlHuhY/dxmfvUmovuk/xDe3NosgPCOmbjITqtqVgVm8cKWB6IAytOmRkUbPnIP
 HmyOBr3/r+2U0EEd9J9iTC1C0NJWVY6ZoJ8h33LDpd7q7OLUrd95wChPePtGXo9rgeHp
 3hCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=OjM07KqdEPzpTKDaPNTVnnzl0Bo0UX8ZWFo9wvgBwFU=;
 b=BQq/+U6JAtnk9PEJEdc8QrLa5ms3bx/UK6kJbw6UBFpD7rDSTr3yXZLb/s1ULRae1w
 lTwOxYDTuoQF5KlojTGE7CA+ccl8+Swzp/TGYtIkJY9ADN/99ReTePH0XQfUzoEmM1c6
 QjxvzDid5fG+T9xYWmO30+Mys8EbtLfsFXjWV56ryCpbOo5bv6doyaPMdFhI1bMlHUtq
 V/VsxfQlyLf+iELt8TLzWYedKCeG+RZzDXHR5dgT8ht2Lp1UKD64gg/EKNb2fM2kz/Ey
 fTKhHCsVw2v+6iPan09IJ8wS18RHl24V1qvbHFRweeymZDgF4p5ssf4jg+BWjO2LY1Bz
 wtdw==
X-Gm-Message-State: AGi0PubC/0kOJCEfVKQd9klPFdN56wEJlTaEgB/lE69L+3c/fnlpgjoU
 +kJcx+7IuXvjbXth/WpC4A==
X-Google-Smtp-Source: APiQypIB04RVPDdSclHzap2W27tNYzX1/q5hZapBNjQ1r8flFjeFuZqf8PoEL61RBJwp+rNIbCqp8w==
X-Received: by 2002:aca:706:: with SMTP id 6mr4011142oih.115.1585938953167;
 Fri, 03 Apr 2020 11:35:53 -0700 (PDT)
Received: from serve.minyard.net ([47.184.130.101])
 by smtp.gmail.com with ESMTPSA id a3sm2307955oti.27.2020.04.03.11.35.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 11:35:52 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id BEF5918016D;
 Fri,  3 Apr 2020 18:35:51 +0000 (UTC)
Date: Fri, 3 Apr 2020 13:35:50 -0500
From: Corey Minyard <minyard@acm.org>
To: Jules Irenge <jbi.octave@gmail.com>
Message-ID: <20200403183550.GS2910@minyard.net>
References: <0/5> <20200403160505.2832-1-jbi.octave@gmail.com>
 <20200403160505.2832-6-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403160505.2832-6-jbi.octave@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
X-Headers-End: 1jKRAd-006HTN-5R
Subject: Re: [Openipmi-developer] [PATCH 5/5] ipmi: Add missing annotation
 for ipmi_ssif_lock_cond() and ipmi_ssif_unlock_cond()
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, boqun.feng@gmail.com,
 "moderated list:IPMI SUBSYSTEM" <openipmi-developer@lists.sourceforge.net>,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Apr 03, 2020 at 05:05:05PM +0100, Jules Irenge wrote:
> Sparse reports a warning at ipmi_ssif_unlock_cond()
> 	and ipmi_ssif_lock_cond()
> 
> warning: context imbalance in ipmi_ssif_lock_cond()
> 	- wrong count at exit
>  warning: context imbalance in ipmi_ssif_unlock_cond()
> 	- unexpected unlock
> 
> The root cause is the missing annotation at ipmi_ssif_unlock_cond()
> 	and ipmi_ssif_lock_cond()
> 
> Add the missing __acquires(&ata_scsi_rbuf_lock)
> Add the missing __releases(&ata_scsi_rbuf_lock)

Yeah, this is good, I've included it in my tree.

-corey

> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/char/ipmi/ipmi_ssif.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index 22c6a2e61236..030e7c09e44f 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -313,6 +313,7 @@ static int start_send(struct ssif_info *ssif_info,
>  
>  static unsigned long *ipmi_ssif_lock_cond(struct ssif_info *ssif_info,
>  					  unsigned long *flags)
> +	__acquires(&ssif_info->lock)
>  {
>  	spin_lock_irqsave(&ssif_info->lock, *flags);
>  	return flags;
> @@ -320,6 +321,7 @@ static unsigned long *ipmi_ssif_lock_cond(struct ssif_info *ssif_info,
>  
>  static void ipmi_ssif_unlock_cond(struct ssif_info *ssif_info,
>  				  unsigned long *flags)
> +	__releases(&ssif_info->lock)
>  {
>  	spin_unlock_irqrestore(&ssif_info->lock, *flags);
>  }
> -- 
> 2.24.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
