Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A47F5307758
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Jan 2021 14:43:36 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1l57aA-0003Hu-1r; Thu, 28 Jan 2021 13:43:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cminyard@mvista.com>) id 1l57a5-0003HW-Te
 for openipmi-developer@lists.sourceforge.net; Thu, 28 Jan 2021 13:43:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MYMnyq9aiAmBgXk76odK/uDrbX7yILPvUUSs8LZrwNw=; b=HnP1FKamZCTPEFDLbKAD0OIoKe
 calftD2qPXY365je1ux66WE4BGVfD+D66oSkGerIvYcOUUo9E9uKon/PsbG6PJpxN2ef8QkTSmHN/
 ACNg1AEWQRCJ5GDVRyeo5EY5tk1TpCBemRLHUBUmpEYQ42KqO5Tw2HcIfvVUC8POO+dw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MYMnyq9aiAmBgXk76odK/uDrbX7yILPvUUSs8LZrwNw=; b=ZGcqtJfBCJshs5jw0umj4rKGO4
 /+SFeCJVZ/Upejh+Ld+ZZOxqEmM94b/0swfhpx2RLWZmzMTL2CNQNkEw9XJK/f43hCLPZB5gbR4Tb
 Rcwrj+52rbzzHEwB9QdPzQkPmNZyeO/cyivI2kqmvYZ8Ri/XKTtDOM7uKEwGUqgSSPpo=;
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1l57Zx-0007Mv-OF
 for openipmi-developer@lists.sourceforge.net; Thu, 28 Jan 2021 13:43:29 +0000
Received: by mail-oi1-f182.google.com with SMTP id h192so6043735oib.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 28 Jan 2021 05:43:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mvista-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to;
 bh=MYMnyq9aiAmBgXk76odK/uDrbX7yILPvUUSs8LZrwNw=;
 b=IrqLAPLLRuH0l4zw49WppVMRW/uuhP+xUXxPF5F03JoXE2uuZIb7JjcGukwqFJSOoB
 QqWi7pzjDoTKGgr8tvvC4aFJRRnNkmU4bNtm2Hm69x74jOKWbX53nJ2WtkXkWh3DWyN+
 3kNpYa3krMenE9ZmZSni+cwGd+QLZYxeX9kMZB7AlhN+yYdw7/wQZpvjn6BR8zRCoSP2
 TAyqZz7snRci/1ibTTtOPPHqYMHEKcj00+4JAjyCnr95XXh6iGemuOQheMmthiBji68l
 RiTmDSgSbNh+6jr2wCZh5GxRGeit5wWjPnns+8FJO3meZ5wmfRMu3eRX0YgX8PWahwZm
 p/wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to;
 bh=MYMnyq9aiAmBgXk76odK/uDrbX7yILPvUUSs8LZrwNw=;
 b=c8HJ4r2Z81iBBVx/kPuDNUwQhfDX5v2YOtbTQSGY79wfPiDv83GhsAz79D5Zl53fUE
 zhI+7+e513UFDnDGGpxsMRYLc1QsG3GBsoA96bK3HhW8u25c2esbthVMP6/F1v2/NCsi
 G1udpzws7c7gbsrL1fmfYk5rXuwkr+aDLZouLoNyFyKLVJSNWuV7adGrWQuH4jhcbttW
 qzCtyQMWJv3kyqlVQYP/YtBC75QDNS0JeoNJ3w1HlVyAzJ17tMKoc5h/ccQXIfabqbLW
 p41GrpiorVlDWGuywJeJE4BmFB730qD/qjz3rx1dd2hDqliaQLd6EYRxDOEvNUSo0Inp
 Dh7Q==
X-Gm-Message-State: AOAM531Q1kQldpfBatjBXWmJ1nRk+eu5e/jwETebCqcyyGAvQByh26Nd
 cCLfIuZ+LeY8tiiTp15dg/aOlxtl6fYaIw==
X-Google-Smtp-Source: ABdhPJxX+uVsYKsI7NArfnD5+TrBoPQkjiuV59z9z5sB/J1DULJ3nl/+98FxbrC939C6MWUm6vJ2LQ==
X-Received: by 2002:aca:57c8:: with SMTP id l191mr6478760oib.23.1611839742940; 
 Thu, 28 Jan 2021 05:15:42 -0800 (PST)
Received: from minyard.net ([2001:470:b8f6:1b:d0e0:7e1d:debb:57fe])
 by smtp.gmail.com with ESMTPSA id h18sm983785otk.26.2021.01.28.05.15.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Jan 2021 05:15:42 -0800 (PST)
Date: Thu, 28 Jan 2021 07:15:40 -0600
From: Corey Minyard <cminyard@mvista.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Message-ID: <20210128131540.GY21462@minyard.net>
References: <20210128085544.7609-1-wsa+renesas@sang-engineering.com>
 <20210128123757.GW21462@minyard.net> <20210128125350.GP963@ninjato>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210128125350.GP963@ninjato>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.182 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.182 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l57Zx-0007Mv-OF
Subject: Re: [Openipmi-developer] [PATCH RESEND] ipmi: remove open coded
 version of SMBus block write
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
Reply-To: cminyard@mvista.com
Cc: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-i2c@vger.kernel.org, Corey Minyard <minyard@acm.org>,
 Asmaa Mnebhi <asmaa@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Jan 28, 2021 at 01:53:50PM +0100, Wolfram Sang wrote:
> On Thu, Jan 28, 2021 at 06:37:57AM -0600, Corey Minyard wrote:
> > Looks good, do you want this in the IPMI tree or are you handling this
> > another way?
> 
> I can take it but would prefer the IPMI tree.

Ok, it's queued for next merge window.

-corey

> 
> Thanks!
> 




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
