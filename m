Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0EC1D0082
	for <lists+openipmi-developer@lfdr.de>; Tue, 12 May 2020 23:14:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jYcEX-0004rN-TD; Tue, 12 May 2020 21:14:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jYcEW-0004r4-9w
 for openipmi-developer@lists.sourceforge.net; Tue, 12 May 2020 21:14:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mX8ky5JN8pgBa+YKDvrjatRwVe22JYdHF5VmHIVTBlE=; b=R/t+iBCKdpxORRHU0oJXGGWGMt
 sPzbeN7NzhRRMoRp0TbbO6atIiPyvRSxSQzgZfLtXNf23XmniaUpvg8zmKr1U+coL7ViIyZBg0YPr
 aEWXyx7YVY3tqMgXnBLtKGDLTmNF2pMUK98wtlnKqYNvgPli/1CPgxMquRAoWmU1iXiA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mX8ky5JN8pgBa+YKDvrjatRwVe22JYdHF5VmHIVTBlE=; b=TauO+mLrldiNauM20bgPsR43jf
 O/fhcl+TQhxb6Zj5c03xhU+mljs38+/RyfZ7k1SJju+8cGPs2gCo2JkwZKZix15kF7W+cbOUo2/We
 iAVQU7MnxtSIPLd3EqHgSM4h8j+7vzkvIcyNEOpKJ+/cx/j60NU2xa99cfjt/UAW6xpI=;
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jYcEU-003jTj-Cc
 for openipmi-developer@lists.sourceforge.net; Tue, 12 May 2020 21:14:36 +0000
Received: by mail-oi1-f196.google.com with SMTP id p127so67086oia.13
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 12 May 2020 14:14:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mX8ky5JN8pgBa+YKDvrjatRwVe22JYdHF5VmHIVTBlE=;
 b=iV2RPOe2FrnU+h8+Up/ExtrRpnFvfhk+w+IzXzJ1UdFrcVHhC8Q2KU+oNoZrgCVVVj
 UfWmpR8Xrv6YcwnZD7Q/sg/X8UlJpMIXb4/5VzUTAvEDFkYqpOT1/7IALm93B646bOGP
 RQf8yWvZRpLlmbdgE3IgHH1sGeGCbD0y3zslRYAujjoQtxn36UV5NCsTnuQIJzBiN+VL
 ILuab/8Rs5aitKxV6no/fefi31Y4PLJPcDQxnWtGw2NYAKnq/7HgawJVyuFY+NFaMxUN
 pYlfguUMgdRyGrFSjS+3VGExqgpGKsu89IK8ReVUAaE2X5L5B3RneXsIckDYZ5C0d4n8
 kxeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=mX8ky5JN8pgBa+YKDvrjatRwVe22JYdHF5VmHIVTBlE=;
 b=HswUFCcoFKSjZ2C9y1K5Txg1FHJQdhGvFU7feTTNi73V9BKVFLMwF7QtiBiu7r6g0f
 EEWKImsG3inR3nGKqzDA60PRpl25NM/2K5QIbsjBe463vDE/+xgbfjPcLBgB2SfdWoun
 W2kZpk9bVWlD2ZSvnXDR2R4C1yGcqNZ0R+ytj1SXsDiH0EkLK9Qjt03YESFvbi2D5n1T
 zP5yV7N/eUfkhb6W6TnmUajkTATI/wDi1nMEfaF3lGRv8GffM+2s6/WibeJQ0d88Y39w
 iu63jvi2Gz/ry+zwa2hQ8Sjn9EPD2EaJ4VqLQuQxMTEqVvkkaNf4EOHVR9gmXfjrl4Hs
 QmAg==
X-Gm-Message-State: AGi0Pub4I6AuWVSQXZJfekAGwsqPTcFF9U/P4b2YRtu4WxivO4IWs3TI
 uFV1QY8wqxR7+aa2Kvwpsg==
X-Google-Smtp-Source: APiQypJN7RiCdIUjHWyYpUVmDqReWQY+dqrjR9QQhXITyIFORnps2wrSQiLn3qpmQpwZwzhff2vhDg==
X-Received: by 2002:aca:4ac3:: with SMTP id x186mr16258452oia.81.1589318068467; 
 Tue, 12 May 2020 14:14:28 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id d19sm2168689ooa.48.2020.05.12.14.14.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 14:14:27 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id 7C54C180051;
 Tue, 12 May 2020 21:14:26 +0000 (UTC)
Date: Tue, 12 May 2020 16:14:25 -0500
From: Corey Minyard <minyard@acm.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Message-ID: <20200512211425.GQ9902@minyard.net>
References: <20200326210958.13051-1-wsa+renesas@sang-engineering.com>
 <20200326210958.13051-2-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326210958.13051-2-wsa+renesas@sang-engineering.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
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
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jYcEU-003jTj-Cc
Subject: Re: [Openipmi-developer] [PATCH 1/1] char: ipmi: convert to use
 i2c_new_client_device()
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, linux-i2c@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Mar 26, 2020 at 10:09:58PM +0100, Wolfram Sang wrote:
> Move away from the deprecated API.

Well, I should have looked a little closer first... comment inline

> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>  drivers/char/ipmi/ipmi_ssif.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index 8ac390c2b514..2791b799e33d 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -1945,8 +1945,8 @@ static int ssif_adapter_handler(struct device *adev, void *opaque)
>  	if (adev->type != &i2c_adapter_type)
>  		return 0;
>  
> -	addr_info->added_client = i2c_new_device(to_i2c_adapter(adev),
> -						 &addr_info->binfo);
> +	addr_info->added_client = i2c_new_client_device(to_i2c_adapter(adev),
> +							&addr_info->binfo);

i2c_new_client_device returns an ERR_PTR, not NULL on error.  So this
needs some more work.  I'll send something out soon.

-corey

>  
>  	if (!addr_info->adapter_name)
>  		return 1; /* Only try the first I2C adapter by default. */
> -- 
> 2.20.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
