Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5CD61DFD0
	for <lists+openipmi-developer@lfdr.de>; Sun,  6 Nov 2022 01:30:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1orTYp-0007kh-0O;
	Sun, 06 Nov 2022 00:30:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1orTYn-0007ka-EF
 for openipmi-developer@lists.sourceforge.net;
 Sun, 06 Nov 2022 00:30:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U7icr2ccwj4KXKIEFeiasLTFoXUPeV5GqVTWsb2ag74=; b=X+rAXLKZcqEhx9otZn1RM3IHDB
 F5ZMOLoZCXbvi7nVXEGDyGaBkfCImP8SD+jDG2/cX8giudzl22L7N3oh1DbNz0RvUsvSMTW30D+v+
 yhOKA6XW71/7sICrmQ78ECoHtU84x4fmcsekdbMHs181LB/tAwlptK4Bh/Rf+EIFzsUU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=U7icr2ccwj4KXKIEFeiasLTFoXUPeV5GqVTWsb2ag74=; b=knYmXDpvVqNxr7Vq/xZASlArz/
 /txvjbd90W29SpX+4LMiIMiHOI1B/rJJdTmrd5+yd1dZRh6KFbNzKvChzQTOlWlsHB7eORfY06ihn
 Jm2SmnXlvvQqxHEWcRmX/8wZGVNck53L+BMbuTOCAsdzvVlVeA14MLb7XTm768/6IYo4=;
Received: from mail-qt1-f180.google.com ([209.85.160.180])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1orTYm-00Dd3t-PR for openipmi-developer@lists.sourceforge.net;
 Sun, 06 Nov 2022 00:30:49 +0000
Received: by mail-qt1-f180.google.com with SMTP id e15so5278533qts.1
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 05 Nov 2022 17:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=U7icr2ccwj4KXKIEFeiasLTFoXUPeV5GqVTWsb2ag74=;
 b=J4HGCixsqOHqnl7wwgpKN/wpG1l5e7HZx5SRew4/3U6oI9/krShrjd2+JVmp1jcFZ9
 zBBq1nlWov8Egp3o1UslodAR2HGZb/c4+YGJ9SUMo/TskUrwxB+s3MRm874qdBbM8xG9
 abgQmaK8tAeU3vfvGyfU/XT3aLj1IKPgoGUwt4nmoa4IwVYKaLUKWhNVH3A8Ge5QKOr4
 dnKhpX4XG92gCVoprWkH6ZMXs/dm6HfVEj7Mv7cGIoQaZHu/nl24reeIA3kJGPoGgsyE
 +2U93K5MohtYCYR/GGdabIyiXZXxb6BKtoN6Fm6iOiM4VV+R9uh23vqdt+cOaNb/zv9j
 uALA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=U7icr2ccwj4KXKIEFeiasLTFoXUPeV5GqVTWsb2ag74=;
 b=UxHQD6yET57oQXx45FHSgyrScxqkla0zucQOpdeF0Tb8qbPxlMITV97FPxTnlzjbEd
 kplDwOq4Hn15xOzg/2pEy4vUgcAYke0JsXLbrkH9kh9S+45gpvzPj1KEp9BXRgWv0247
 p1W2WL/3Fierj2WQDC9uBiS9kUxLQtbq0+RyFSywFgUldFxI2syGzXNE0r83n78oUYWM
 wURAx7v828RfqgdZIJjMmTyivFkgdW3Di5G6ZyWv2rFESXU8gkFh1rSPgde39MVcZ+QT
 Tuo6zqY5J+rir8qtSnE10Yl6PRyr3Edy6QfdHHzK50dNIhKSakj99NdNN+mGVoXi4jSG
 kong==
X-Gm-Message-State: ACrzQf0pIlFmpXng/y8mb4b2SISXB/sICS5GHM9UGNSDC5j8kH0Im+ma
 ErTF8V4T1XRxSrAHKeoJTpB2ADlCPQ==
X-Google-Smtp-Source: AMsMyM5DO/1XqMmBZ2bNaxOTQmx8u0/IZ2EubMZ0oerO/KAUsl3l/boidddsW0tbhwz3X62yEzFqww==
X-Received: by 2002:a05:622a:40d:b0:397:bd61:ef1d with SMTP id
 n13-20020a05622a040d00b00397bd61ef1dmr35514956qtx.404.1667694639370; 
 Sat, 05 Nov 2022 17:30:39 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 o14-20020a05620a0d4e00b006eef13ef4c8sm2960643qkl.94.2022.11.05.17.30.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Nov 2022 17:30:38 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:56b3:6d0f:b2b0:c9a9])
 by serve.minyard.net (Postfix) with ESMTPSA id F14E8180044;
 Sun,  6 Nov 2022 00:30:36 +0000 (UTC)
Date: Sat, 5 Nov 2022 19:30:35 -0500
From: Corey Minyard <minyard@acm.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <Y2cAKyqilb7v9tFi@minyard.net>
References: <37daa028845d90ee77f1e547121a051a983fec2e.1667647002.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <37daa028845d90ee77f1e547121a051a983fec2e.1667647002.git.christophe.jaillet@wanadoo.fr>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Nov 05, 2022 at 12:16:54PM +0100, Christophe JAILLET
 wrote: > The kstrto<something>() functions have been moved from kernel.h
 to > kstrtox.h. > > So, in order to eventually remove <linux/kerne [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.180 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.180 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1orTYm-00Dd3t-PR
Subject: Re: [Openipmi-developer] [PATCH] ipmi/watchdog: Include
 <linux/kstrtox.h> when appropriate
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sat, Nov 05, 2022 at 12:16:54PM +0100, Christophe JAILLET wrote:
> The kstrto<something>() functions have been moved from kernel.h to
> kstrtox.h.
> 
> So, in order to eventually remove <linux/kernel.h> from <linux/watchdog.h>,
> include the latter directly in the appropriate files.

This is in my queue.  Thanks.

-corey

> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
>  drivers/char/ipmi/ipmi_watchdog.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
> index 5b4e677929ca..47365150e431 100644
> --- a/drivers/char/ipmi/ipmi_watchdog.c
> +++ b/drivers/char/ipmi/ipmi_watchdog.c
> @@ -23,6 +23,7 @@
>  #include <linux/init.h>
>  #include <linux/completion.h>
>  #include <linux/kdebug.h>
> +#include <linux/kstrtox.h>
>  #include <linux/rwsem.h>
>  #include <linux/errno.h>
>  #include <linux/uaccess.h>
> -- 
> 2.34.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
