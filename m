Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF73B38DE7B
	for <lists+openipmi-developer@lfdr.de>; Mon, 24 May 2021 02:54:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lkyrR-0004BQ-UP; Mon, 24 May 2021 00:54:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andrew@aj.id.au>) id 1lkyrQ-0004BA-BF
 for openipmi-developer@lists.sourceforge.net; Mon, 24 May 2021 00:54:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:Mime-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c1N+jbjenOjR/XYKJ9JrzDDr2ArT8jHcPPYVtFN0+8s=; b=Xs15OtMOm7UT1rygkzsUBMVNJZ
 ohsNOvY4bslSBOtyN+f4iX+wvBwD6qU4i5Ws+TygnSuv/IyEENZdR5PncDv5WKV6cnVoOLhLeSxdD
 kwxTCywfwtd9P7ZYqA1T9m9mT64d8/LXoUmyGWDcOmg3qk5cC1YYvbxxP9BY6b01SEk0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 Mime-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c1N+jbjenOjR/XYKJ9JrzDDr2ArT8jHcPPYVtFN0+8s=; b=lZq3KLSSdjXlyzLfnNRM19MtG0
 Uh97jDybcqK99KHdgHgmnoabKLpEzEmg8/Q/i3nkIbzQqJdA/f5Q0h4nC1eNDooel/oMzBoJXfTqS
 LbfvdFEmCQ0gafTNL6BdFZAD6y5P4VDO4dSYrz5d9WUtn5sT1GAyW2NvG0UHEuFWpeYk=;
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lkyrB-0002Rg-RC
 for openipmi-developer@lists.sourceforge.net; Mon, 24 May 2021 00:54:23 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id C31455802BD;
 Sun, 23 May 2021 20:54:02 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute3.internal (MEProxy); Sun, 23 May 2021 20:54:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm2; bh=c1N+jbjenOjR/XYKJ9JrzDDr2ArT8jH
 cPPYVtFN0+8s=; b=ok68MILGrCZHwK/EEaDToidzeAy70JVtB9FjJ/pwDgHMLPY
 ovb+ac2A0hKcALq3BTdinuwCUU4tFEwGrOvVUL4mgilE0fbIeLVIYkvTSg/A3C9A
 isVLljZCWMdha3ynTPS17MuqSVPwWl+xJfQt4IZm5lrj3u6/bDh1GWIUQBVKySVd
 7ERl6fYx9Hzwm7OyafapAf+HBqlPX9FYAxNvCWVQ9ffjN0rYZxPnzQvHDbFhf3R7
 IkCLkHtnZMQBtAnVcG+H+5GnhaCsHT3HniEb+iFzns1yaffCeyg6si9NuN84TU7r
 3z366tuQSQtEi+GBbH7tKxItf/Q+Fdx23+XX7rw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=c1N+jb
 jenOjR/XYKJ9JrzDDr2ArT8jHcPPYVtFN0+8s=; b=sPFszQINYn+1MtITcFCPyx
 lNphgTAT0DJen+WqjLY3YH7HctWzuSJZ3zFTeSqLVuWZDYrW/idxoBb2M6LPgQEt
 ki/8+/Rk5S3eboxuGAYSLYMeGt4FwnCgkj+pOAJmlbNiPSPABGZshOSo60atWGdN
 cG0D6RtmqjLAFdmo/kORMxRpta5VgktFkB9TRMbfmX0piFWDr6uIDOQAVJbV4LjE
 DzJ46YD4tCg8RGGDBhp/tGiEQT+XdDLiX7JE1q4DwXdCPcoKSS4zY+wSpDL+idNh
 R1IVg/tHltd7L39TDpOgOOuq+WjNKHaAYxtN9BElPSGpkJQYPt1F36fzw4/0Bt1g
 ==
X-ME-Sender: <xms:KfmqYFGXktOhUPKNJDzJOYcQ4Tzeks6lN1hunCMH1BbKURc_qdOeeQ>
 <xme:KfmqYKVP_82xbmIxz_bE2LM3yEsYweE7P_onWJwfGBmcrYdGMtiisHCAzK7IyH6hJ
 zaAN34p43ng12aQBA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdejkedgtdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
 grthhtvghrnhepuddttdekueeggedvtddtueekiedutdfguedutdefieeuteefieelteet
 vddthfeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:KfmqYHJ_v5C8EG4EYW_NTn5UOzrX06fnPFbJZwnae3XD3YlkYQwJYg>
 <xmx:KfmqYLEbBUyIlB3eIXd5Hlj8oTL17cnH9n5uxKzO935D-w7tJcEf8g>
 <xmx:KfmqYLWUfTZj2bVKOVzdVzOrcjFw_MTyYmuY4pT_lvT-CSbWNEFr9g>
 <xmx:KvmqYIW307aCSiZ_4TnEnca3DgiXJQoDUWxBQVo4wWBb1GY4ECIEyg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id A081EA004B1; Sun, 23 May 2021 20:54:01 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-448-gae190416c7-fm-20210505.004-gae190416
Mime-Version: 1.0
Message-Id: <79f3c6d1-1f74-46ec-99a0-37faf11517b6@www.fastmail.com>
In-Reply-To: <20210521171412.GI2921206@minyard.net>
References: <20210510054213.1610760-1-andrew@aj.id.au>
 <20210510054213.1610760-6-andrew@aj.id.au>
 <20210521171412.GI2921206@minyard.net>
Date: Mon, 24 May 2021 10:23:36 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Corey Minyard" <minyard@acm.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lkyrB-0002Rg-RC
Subject: Re: [Openipmi-developer] 
 =?utf-8?q?=5BPATCH_v3_05/16=5D_ipmi=3A_kcs?=
 =?utf-8?q?=5Fbmc=3A_Turn_the_driver_data-structures_inside-out?=
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



On Sat, 22 May 2021, at 02:44, Corey Minyard wrote:
> On Mon, May 10, 2021 at 03:12:02PM +0930, Andrew Jeffery wrote:
> > Make the KCS device drivers responsible for allocating their own memory.
> > 
> > Until now the private data for the device driver was allocated internal
> > to the private data for the chardev interface. This coupling required
> > the slightly awkward API of passing through the struct size for the
> > driver private data to the chardev constructor, and then retrieving a
> > pointer to the driver private data from the allocated chardev memory.
> > 
> > In addition to being awkward, the arrangement prevents the
> > implementation of alternative userspace interfaces as the device driver
> > private data is not independent.
> > 
> > Peel a layer off the onion and turn the data-structures inside out by
> > exploiting container_of() and embedding `struct kcs_device` in the
> > driver private data.
> 
> All in all a very nice cleanup.  A few nits inline.
> 
> > 
> > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > Reviewed-by: Zev Weiss <zweiss@equinix.com>
> > ---
> >  drivers/char/ipmi/kcs_bmc.c           | 19 +++++++--
> >  drivers/char/ipmi/kcs_bmc.h           | 12 ++----
> >  drivers/char/ipmi/kcs_bmc_aspeed.c    | 56 +++++++++++++------------
> >  drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 60 ++++++++++++++++++---------
> >  drivers/char/ipmi/kcs_bmc_npcm7xx.c   | 37 ++++++++++-------
> >  5 files changed, 111 insertions(+), 73 deletions(-)
> > 
> > diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
> > index ef5c48ffe74a..83da681bf49e 100644
> > --- a/drivers/char/ipmi/kcs_bmc.c
> > +++ b/drivers/char/ipmi/kcs_bmc.c
> > @@ -44,12 +44,23 @@ int kcs_bmc_handle_event(struct kcs_bmc *kcs_bmc)
> >  }
> >  EXPORT_SYMBOL(kcs_bmc_handle_event);
> >  
> > -struct kcs_bmc *kcs_bmc_ipmi_alloc(struct device *dev, int sizeof_priv, u32 channel);
> > -struct kcs_bmc *kcs_bmc_alloc(struct device *dev, int sizeof_priv, u32 channel)
> > +int kcs_bmc_ipmi_add_device(struct kcs_bmc *kcs_bmc);
> 
> The above (and it's remove function) should be in an include file.

This is a short-term hack while I'm refactoring the code. It goes away 
in a later patch when we switch to using an ops struct.

I didn't move it to a header as it's an implementation detail at the 
end of the day. I see headers as describing a public interface, and in 
the bigger picture this function isn't part of the public API. But 
maybe it's too tricky by half. My approach here generated some 
discussion with Zev as well.

> 
> > +void kcs_bmc_add_device(struct kcs_bmc *kcs_bmc)
> 
> This should return an error so the probe can be failed and cleaned up
> and so confusing message don't get printed after this in one case.

Hmm. I did this because the end result of the series is that we can 
have multiple chardev interfaces in distinct modules exposing the one 
KCS device in the one kernel. If more than one of the chardev modules 
is configured in and one of them fails to initialise themselves with 
respect to the device driver I didn't think it was right to fail the 
probe of the device driver (and thus remove any chardev interfaces that 
did succeed to initialise against it).

But this does limit the usefulness of the device driver instance in the 
case that only one of the chardev interfaces is configured in and it 
fails to initialise.

So I think we need to decide on the direction before I adjust the 
interface here. The patches are architected around the idea of multiple 
chardevs being configured in to the kernel build and all are exposed at 
runtime.

The serio subsystem does have the 'drvctl' sysfs knob that allows 
userspace to dictate which serio chardev interface they want to connect 
to a serio device driver. Maybe that's preferred over my "connect them 
all" strategy?

Andrew


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
