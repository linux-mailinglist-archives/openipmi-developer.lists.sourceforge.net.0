Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACD3B289C7
	for <lists+openipmi-developer@lfdr.de>; Sat, 16 Aug 2025 04:03:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vNyqa95x2UXtWohRr/nXxAK+UsOSJCU/f8HiVtJiEW4=; b=XY/bK7CMgV/CPOME7GUVyCGoXF
	XLS4YvPoz29Lm1DHaeAQcQoOOENC+4xHor/Wdw6Njl2IaINyK/xnrj3XOx4aZ7d71wcQnMkuJkGJQ
	mNdAe9FEO333Zftrlxl18imlxN4rYwg6gU10o14c4Q2hdRSujIM25z9yWqS3Z1ix1rhc=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1un6Fv-0003Le-VZ;
	Sat, 16 Aug 2025 02:02:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1un6Fu-0003LV-Gu
 for openipmi-developer@lists.sourceforge.net;
 Sat, 16 Aug 2025 02:02:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jP1W19LjLSkvrRoe2qDVizyJ7MFWz2WXooHFP4rj+9E=; b=lh2HbSmXvRTMuRmaoLm5/9D7Ey
 j0dfq277p1bIg0psiA/4Svk3gWK2SnIUznTkz/u+am8ELPj27jat87JXqfSHBr2a717UXuNK+Bvbq
 pa/S0+Sz/qJ9lC5+4Dr91XOXQ8DwW+UO2J3EmYA7tO/mv/wmP47SYKIIyYUPR95asWzk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jP1W19LjLSkvrRoe2qDVizyJ7MFWz2WXooHFP4rj+9E=; b=BH5KcTYnxFVhps+xctUnL8cbAW
 8Hvpkr1V7+UEPL5S2pXC/0xYwhGNRcXbN7CkMf4juP6ujnvXlAln0wLQLJXJAoLiztX9V/sqODWvO
 mX/Kx7XCrqVFeXwOBiw6UQN+0b+cuDRTxRDS4HklLFptZB3qAFaX6MxWjWPIgdvq+2wM=;
Received: from mail-qv1-f51.google.com ([209.85.219.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1un6Fu-0000xy-2s for openipmi-developer@lists.sourceforge.net;
 Sat, 16 Aug 2025 02:02:50 +0000
Received: by mail-qv1-f51.google.com with SMTP id
 6a1803df08f44-70a9282f475so22529656d6.1
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 15 Aug 2025 19:02:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1755309759; x=1755914559;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jP1W19LjLSkvrRoe2qDVizyJ7MFWz2WXooHFP4rj+9E=;
 b=au0C2tqq3xnP9stC/wPgCalIln4lfzNiY8GVQ9mhjFZ099E0ZOPHFZqFiH95UaGpLc
 V3CY4BK38at9v3P/tu6yNrejJZiIk6qxe+8TnvkvmbSkucPt4ojjueaqEzfXm+v8bh0y
 GHXuFeoFDL4Wa3YDhhGtYExU15WY4Lhj6kwi8tZOMd9UWjNhZpDCbwZprW1qEJUvCGh6
 Xo8uNina7BDfal/IAmiiqrxIYw1SqxGvDYhAopctxllxSkyeQIy34uNzudVE58yQMDLP
 CmliQVgGiaqmkkQknCixaRUP+XDfI55jQoh1BeawWUY2KDXrWd9HaaDFW+nEsXQOzdeR
 lHog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1755309759; x=1755914559;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jP1W19LjLSkvrRoe2qDVizyJ7MFWz2WXooHFP4rj+9E=;
 b=t7EI4fZAxKuc9DXF5ivUwTBty/BeCesVMKDqcQq7exgeYn9MqHlqbRcB5sLIjt4gwo
 E+kxJeoEexk7dx0XYDNgy89NtjWpLWS8K2HzZDZ6C5CrqlcVjvwJXOseivLI518uhGar
 qFhHHiAeXqqN0KuqHzI4mhfamL1fETLOTKP6UYgPBCzYZrKOwH9CdbSp/CfFfA8hk19z
 r9HUkuZBAjjqBinRA89GsgvdzXnj9Oww9zWt/FgcuaXv4FkYm8T6d4YCWcSXlINKE142
 nuPRKb+alpT7rZJeFoPIvSUjCF5zldxoqXzflwCcq3SUI9jNfw2TC8WupS8bJEbpBDql
 vQkA==
X-Gm-Message-State: AOJu0YzHsdR8MD3OgtuGwi6yjlzpgIJs+AMvfbDx1h7C8/BrMZPSj9Yg
 oK3t9IpwrFkdtcGMg8wjd8WENR9TgcTMSL/4+m57pgKQC10TOuWqGZqDCxiiauF19XZjGY0hf4e
 YD1G7
X-Gm-Gg: ASbGncuue2IAd1Jnh/SGM+8xz+/0V2CVb9tM20P5XhQqF2B8YqTkF5MvIu0PpQccT3M
 U87I9lPcoyvvGpFLNGpfbUAZIrZhxNKJh8CtJ3o95Y+21sxyG4+hDcFmGAboW4KRFalvpDChCgr
 1MF6q0AsJUp1Uo/jUvZRP0SzgH+TodI4Yheej4Dixfpkqv/GYUOI1kjBV9lFWDZeUN3D2mjLltv
 R4/LL1kDBYezBFB846GgdwY3cKtEXLy3hhODH2TE2MD3Z6nzrxVlW5CbyPckXpyIlB+VPE6T0fh
 fPO+W+OC+lPHi82Unoi7RJAmBmeqW8SzV+jPNto2AuB2zIXkhEM4ev5IMklg3XUgeh+YmtaoZfA
 Gzlu/yU4TH88UTKLtguep9SxF588koP/fpIxf
X-Google-Smtp-Source: AGHT+IFU8iO56aObahNDHhvpR8cX3ydX0AhknrZWZalCNi8QAT4mM1Bfx8pbUZ3kDzm7L3D8FVl9Ag==
X-Received: by 2002:a05:6808:30a5:b0:433:fa92:69e9 with SMTP id
 5614622812f47-435ec53125dmr2455248b6e.34.1755309400441; 
 Fri, 15 Aug 2025 18:56:40 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:e32c:c52b:6661:b446])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-435ed1af894sm532720b6e.20.2025.08.15.18.56.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Aug 2025 18:56:38 -0700 (PDT)
Date: Fri, 15 Aug 2025 20:56:33 -0500
From: Corey Minyard <corey@minyard.net>
To: Frederick Lawler <fred@cloudflare.com>
Message-ID: <aJ_lUYTlrzYnRD-5@mail.minyard.net>
References: <20250807230648.1112569-1-corey@minyard.net>
 <aJ-lPAc2bLlvHNa3@CMGLRV3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aJ-lPAc2bLlvHNa3@CMGLRV3>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Aug 15, 2025 at 04:23:08PM -0500, Frederick Lawler
 wrote: > Hi Corey, > > On Thu, Aug 07, 2025 at 06:02:31PM -0500, Corey Minyard
 wrote: > > I went ahead and did some patches for this, since i [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.51 listed in wl.mailspike.net]
X-Headers-End: 1un6Fu-0000xy-2s
Subject: Re: [Openipmi-developer] [RFC] Patches to disable messages during
 BMC reset
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
Reply-To: corey@minyard.net
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 kernel-team@cloudflare.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Aug 15, 2025 at 04:23:08PM -0500, Frederick Lawler wrote:
> Hi Corey,
> 
> On Thu, Aug 07, 2025 at 06:02:31PM -0500, Corey Minyard wrote:
> > I went ahead and did some patches for this, since it was on my mind.
> > 
> > With these, if a reset is sent to the BMC, the driver will disable
> > messages to the BMC for a time, defaulting to 30 seconds.  Don't
> > modify message timing, since no messages are allowed, anyway.
> > 
> > If a firmware update command is sent to the BMC, then just reject
> > sysfs commands that query the BMC.  Modify message timing and
> > allow direct messages through the driver interface.
> > 
> > Hopefully this will work around the problem, and it's a good idea,
> > anyway.
> > 
> > -corey
> > 
> 
> Thanks for the patches, and sorry for the delay in response.
> It's one of _those weeks_. Anyway, I backported the patch series
> to 6.12, and the changes seem reasonable to me overall. Ran it
> through our infra on a single node, and nothing seemed to break.
> 
> I did observe with testing that resetting BMC via ipmitool on the host
> did kick out sysfs reads as expected.

Ok, I took the liberty of adding a "Tested-by" line with your name.  If
that's not ok, I can pull it out.

> 
> Resetting the BMC remotely, was not handled (this seems obvious given the state
> changes are handled via ipmi_msg handler). Would the BMC send an event
> to the kernel letting it know its resetting so that case could be
> handled?

Unfortunately not.  It's one of the many things that would be nice to
have...

In general, dealing with a BMC being reset is a real pain.  They tend to
do all kinds of different things.  The worst is when they sort of act
like they are operational, but then do strange things.

I haven't thought of a good general purpose way to handle this.  I'm
toying with the idea of making it so if the BMC gets an error, just shut
things down for a second or so and then test it to see if it's working.
During this time just return errors, like the new patches do during
reset.

Thanks for testing these.

-corey

> 
> Best,
> Fred


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
