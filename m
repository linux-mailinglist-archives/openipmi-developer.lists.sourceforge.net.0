Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E7138B01A
	for <lists+openipmi-developer@lfdr.de>; Thu, 20 May 2021 15:34:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ljioG-00015O-Bc; Thu, 20 May 2021 13:33:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1ljioE-00015G-TO
 for openipmi-developer@lists.sourceforge.net; Thu, 20 May 2021 13:33:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ripHwk91l8LSQFM8vArK3vjCpqN/bvdKWF2j1HC8u6c=; b=YJs4Y5S5KmH+z4ief/tKfGH+gt
 MEiOR6fiwbRycAiM2MIyVhqaJNvU4RXAXVHy0D976KjIKbRr557G8lU47FLdo9Q1T1Ai/CB5c9xvo
 HiE3f434Ny4X8HkskrxwUPsmGOEov9Y4irjzTBnBqxQYIgBEiwE+LWLk2/3eYoD1NeG8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ripHwk91l8LSQFM8vArK3vjCpqN/bvdKWF2j1HC8u6c=; b=N5JS+YBIrSuMBPj+0D3vNcmhyg
 6v3O5/PFsGMKKhgUvSplNiX4KnGtkwvClv9VlqbzQFSccmcu4ukNZOGXKCaFzSGgmzlgKcty40Bu8
 TX+Z/dgimyb821Xd7pDs3oKVQMIU6UPFc+s6aV/aoo7lQcY1teoWo++Oa2jx+s0ySNko=;
Received: from mail-ot1-f49.google.com ([209.85.210.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1ljio1-00009u-Ko
 for openipmi-developer@lists.sourceforge.net; Thu, 20 May 2021 13:33:55 +0000
Received: by mail-ot1-f49.google.com with SMTP id
 i14-20020a9d624e0000b029033683c71999so3669442otk.5
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 20 May 2021 06:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=ripHwk91l8LSQFM8vArK3vjCpqN/bvdKWF2j1HC8u6c=;
 b=oGzkT0ZmY2x/MysH0+yDGwQ6i3nB+q8OwVdNbavdjXd94rxmVyemCwy2Z8Mq5/yuYD
 B59b1TRGuVH5ecwvRHcA1WN1U5fGWRweQQAaB99PUHhma/s1ZVf0Tmi+dfpAYxZwfTKl
 cUKJ8eVJYIvNZzA+JlkbIGtvOzlkF3rR1JlTCtJ4rozr4qAcFWCJhb8nY3oNUZ7K1Zyi
 EZ3hnEbxPqR3Ki8O8A1JequprYOi+wj+bgEGVde5cnfNGC0Iuq9NLRRasKIjbLyN148C
 8/4FftsY+2L/BPAUq3E3LHIA1ljBXhbvr1+3IESlDuRR2dBwfiHVwEB4msdvaqApqfFL
 SxiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=ripHwk91l8LSQFM8vArK3vjCpqN/bvdKWF2j1HC8u6c=;
 b=Kfs9i03Ygl71sVRktsCzMpQugzISVSTh0u/38KMvKCKYf0mm15OXlljj7mJzhk2Rfh
 SJhN0dihut053Fu70vmnt/jDG5Oo7jZkxNho3l424mO4vkXn2/E6N459qI8K2Z3NkfWd
 8YTEylX0ukaUHJ86vdS7nm0wbfjYZIB52ZyfgObUuVYYv0V1rdpzc5FUjo+ZvK93Nzaa
 lwYyhR/9AiQakqbDlUUQhpPsMUDBHdBQpqdpwOQh97IdHU/klWOGdVt0tYqV2hQgT/n+
 rSTfhwBzJRAtoNVwkmf4b40lS/IVOYERu6ReCNsGfE0H3ZzYQQ4KUezMgyrjjUP739Nn
 aw4Q==
X-Gm-Message-State: AOAM531/qY1Gq4eDP0pL7JjhmsqCvwMS3foM/Mn92QY29yepLI5zy/EY
 KXH8Xz4StDrupdxLK8YJag==
X-Google-Smtp-Source: ABdhPJwfdwmkwhxDmYQejkca84wENbYKz2nnMhRT8WLsQz8j3ij+A7Lt8Pum8A1B1aE5/0U4a7HSuQ==
X-Received: by 2002:a9d:855:: with SMTP id 79mr3754200oty.36.1621517616633;
 Thu, 20 May 2021 06:33:36 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id j16sm616665otn.55.2021.05.20.06.33.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 May 2021 06:33:35 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:ecd2:e60e:d7a6:d643])
 by serve.minyard.net (Postfix) with ESMTPSA id 7EFFC18000C;
 Thu, 20 May 2021 13:33:34 +0000 (UTC)
Date: Thu, 20 May 2021 08:33:33 -0500
From: Corey Minyard <minyard@acm.org>
To: Andrew Jeffery <andrew@aj.id.au>
Message-ID: <20210520133333.GH2921206@minyard.net>
References: <20210510054213.1610760-1-andrew@aj.id.au>
 <5b549fee-63b1-4c05-a1d6-f6a13e235e1e@www.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5b549fee-63b1-4c05-a1d6-f6a13e235e1e@www.fastmail.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.49 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.49 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1ljio1-00009u-Ko
Subject: Re: [Openipmi-developer] [PATCH v3 00/16] ipmi: Allow raw access to
 KCS devices
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
Cc: devicetree@vger.kernel.org, Tomer Maimon <tmaimon77@gmail.com>,
 linux-aspeed@lists.ozlabs.org, Avi Fishman <avifishman70@gmail.com>,
 Patrick Venture <venture@google.com>, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, Tali Perry <tali.perry1@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 openipmi-developer@lists.sourceforge.net, Zev Weiss <zweiss@equinix.com>,
 "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>,
 linux-arm-kernel@lists.infradead.org, Benjamin Fair <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, May 20, 2021 at 04:21:31PM +0930, Andrew Jeffery wrote:
> Hi Corey,
> 
> On Mon, 10 May 2021, at 15:11, Andrew Jeffery wrote:
> > Hello,
> > 
> > This is the 3rd spin of the series refactoring the keyboard-controller-style
> > device drivers in the IPMI subsystem.
> > 
> > v2 can be found (in two parts because yay patch workflow mistakes) at:
> > 
> > Cover letter:
> > https://lore.kernel.org/linux-arm-kernel/20210319061952.145040-1-andrew@aj.id.au/
> > 
> > Patches:
> > https://lore.kernel.org/linux-arm-kernel/20210319062752.145730-1-andrew@aj.id.au/
> > 
> > Several significant changes in v3:
> > 
> > 1. The series is rebased onto v5.13-rc1
> > 
> > 2. v5.13-rc1 includes Chiawei's patches reworking the LPC devicetree bindings,
> >    so they're no-longer required in the series.
> > 
> > 3. After some discussion with Arnd[1] and investigating the serio subsystem,
> >    I've replaced the "raw" KCS driver (patch 16/21 in v2) with a serio adaptor
> >    (patch 11/16 in this series). The adaptor allows us to take advantage of the
> >    existing chardevs provided by serio.
> > 
> > [1] 
> > https://lore.kernel.org/linux-arm-kernel/37e75b07-a5c6-422f-84b3-54f2bea0b917@www.fastmail.com/
> > 
> > Finally, I've also addressed Zev Weiss' review comments where I thought it was
> > required. These comments covered a lot of minor issues across (almost) all the
> > patches, so it's best to review from a clean slate rather than attempt to review
> > the differences between spins.
> 
> I backported this series for OpenBMC and posting those patches provoked
> some feedback:
> 
> * A bug identified in patch 9/18 for the Nuvoton driver where we enable
>   the OBE interrupt:
> 
> https://lore.kernel.org/openbmc/HK2PR03MB4371F006185ADBBF812A5892AE509@HK2PR03MB4371.apcprd03.prod.outlook.com/
> 
> * A discussion on patch 10/18 about lifting the single-open constraint
> 
> https://lore.kernel.org/openbmc/CAPnigKku-EjOnV9gsmnXzH=XZxSU78iLeccNbsK8k2_4b4UwSg@mail.gmail.com/
> 
> I need to do a v4 to fix the bug in the Nuvoton driver. Did you have any
> feedback for the remaining patches or thoughts on the discussions linked
> above?  I'd like to incorporate whatever I can into the series before
> respinning.

This will take a little while to review, but I'll try to get to it
today.

Thanks,

-corey

> 
> Cheers,
> 
> Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
