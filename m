Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE6820725B
	for <lists+openipmi-developer@lfdr.de>; Wed, 24 Jun 2020 13:42:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jo3nb-0007pQ-2I; Wed, 24 Jun 2020 11:42:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jo3nW-0007pG-V6
 for openipmi-developer@lists.sourceforge.net; Wed, 24 Jun 2020 11:42:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kpMMFIeGlkwkZTh3hn/jm5cWJ9RKJQuyCjEOj1M9S4Q=; b=jsz5kagZF7RB8E5EFQ3wiSUJWj
 vZmp51Qr+90SSGjMEsVMLE/UrBCLxcADPocS61fXu0PR5dMCKTaThIBJy/pnDBJ0CwMHifoXmoXLL
 zSaR/3QicicrAmqN5BV7T5faPvlPnUV4aej7weOTnOzoh3KGquRII2lIgybVhRVmPilg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kpMMFIeGlkwkZTh3hn/jm5cWJ9RKJQuyCjEOj1M9S4Q=; b=H5fEmgkkPayeS2k2as9xzx9vv0
 FQSCZFuA3D9onksCZn/PB4kKATXG1ap8yLR7N0Rqx2Srdhrshnr2XnXCiTm917BHVPSdw9T93vOVU
 sl/7sK1t4E5giL1D81rL7tPGh1GNJ3r8B35Q7Yn0vJS5JUulN8shVSRVYok2bVBlyyuc=;
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jo3nU-00GYB5-Qs
 for openipmi-developer@lists.sourceforge.net; Wed, 24 Jun 2020 11:42:34 +0000
Received: by mail-oi1-f193.google.com with SMTP id a21so1537504oic.8
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 24 Jun 2020 04:42:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kpMMFIeGlkwkZTh3hn/jm5cWJ9RKJQuyCjEOj1M9S4Q=;
 b=l4wXnCUbjgxOo8QBA1LG2Ntr8zoMB60/oJdQo/oWKzB1nDs1gLVuxFjWvNMsV46ZH9
 x3RdjwNE1CaL+HYRaTNzAi25uFworDvI+Qj1VSuZW6SOKJNRXUpbs4O5cgm12m9NE01q
 btIat6R+qT5Zd87Yay+zrCCaqDCMJPZnuE5G3OsW/FIK/Wmw4m6NbWCpapiVOCoZOVXn
 XQM+roFx9jUvP9iy9MXN+kziLkfnJnU2TiuHalAGv2foFHvdoSc2R5U99cLNkhagWrsQ
 gfDa8Ei9OTNjSKo9d+rKWOQZJxk4rpAHku7OJTaFSX0mWj+QjsfpisM+4g5aHMSrS79K
 PdRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=kpMMFIeGlkwkZTh3hn/jm5cWJ9RKJQuyCjEOj1M9S4Q=;
 b=gSJcyE87C7mwbhGx9adsQRKwxFMNCcg33H22zuoftaSYqMfAKrhDUP8TWC3L2vplE1
 ngnHOPlctmVxnh+d+YI+fE6Rk+26YS/0ZeWiIAmoFGsoYQSqaVye/QQdEUh2WR6Il91+
 TuZ+yn2cMlrlUt2y9e/L7IJckuLDo9ClzvzJHLweuqcap619awdiCZlhvHmr91dzoqM5
 wTHTcA5934DOhedht/1i8KsFxLZcI8r7ChhZyjx7tUiLwXXRmvEaA0XjnReH0wZeiYly
 n6p7mMmNzVyPVoTvX9Lx4P+mYLutCy2qABXSwd+Wec1FrJSD9/VbnC3s7XovuA7hZguy
 d8dw==
X-Gm-Message-State: AOAM533Wq4592+vJR1XCJzX6fC9fS4A117vxOBXAP5ns6jurj2ArENj6
 DAspgZBI5zK50oeZEiE+eQ==
X-Google-Smtp-Source: ABdhPJyBYYg///PnnPcR+c46009QM+hoDAPLf6QGDG629pczBjSf43X5T6l1yUBz/e36hqCYi7ynMw==
X-Received: by 2002:a05:6808:cb:: with SMTP id
 t11mr18850428oic.141.1592998946931; 
 Wed, 24 Jun 2020 04:42:26 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id h27sm4753907otg.23.2020.06.24.04.42.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jun 2020 04:42:25 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:6d79:306:b4b0:35c1])
 by serve.minyard.net (Postfix) with ESMTPSA id 5AAAD180050;
 Wed, 24 Jun 2020 11:42:22 +0000 (UTC)
Date: Wed, 24 Jun 2020 06:42:21 -0500
From: Corey Minyard <minyard@acm.org>
To: Misono Tomohiro <misono.tomohiro@jp.fujitsu.com>
Message-ID: <20200624114221.GH3235@minyard.net>
References: <20200624065405.17653-1-misono.tomohiro@jp.fujitsu.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200624065405.17653-1-misono.tomohiro@jp.fujitsu.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.193 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1jo3nU-00GYB5-Qs
Subject: Re: [Openipmi-developer] [PATCH 0/2] ipmi: ssif: small doc/comment
 update for smbus alert
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Jun 24, 2020 at 03:54:03PM +0900, Misono Tomohiro wrote:
> Hello
> 
> I wondered if ssif driver supports smbus alert and it turned out 
> to be true. So theses patches update some documents to make it clear.

Thanks, these are in my queue.

-corey

> 
> Thanks.
> 
> Misono Tomohiro (2):
>   ipmi: ssif: Remove finished TODO comment about SMBus alert
>   Doc: driver-api: ipmi: Add description of alerts_broken module param
> 
>  Documentation/driver-api/ipmi.rst | 4 ++++
>  drivers/char/ipmi/ipmi_ssif.c     | 5 -----
>  2 files changed, 4 insertions(+), 5 deletions(-)
> 
> -- 
> 2.21.3
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
