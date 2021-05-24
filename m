Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 537FA38EDD9
	for <lists+openipmi-developer@lfdr.de>; Mon, 24 May 2021 17:41:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1llChv-0004jl-Pn; Mon, 24 May 2021 15:41:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <tcminyard@gmail.com>) id 1llChu-0004je-19
 for openipmi-developer@lists.sourceforge.net; Mon, 24 May 2021 15:41:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4dcNCzYKaU8yqVyhBoUyr8CwTAgBxgmUmDbR8bnQPpc=; b=NVspXHwMYv1pyzEAtSwup5dXan
 3mC/9kR3GYUIkc0aGyxXcPLkyfPsetE9qFQJBV5f1xWNzfqUL1RGyrsY1Lw0SrA7RzzN33BasMCls
 9/wdtNnz4PWzrU+HbzjlGs3VbMYbRgjfGfOYw3AAxhzppWRJM1lNkL2/Uaw7+5hr0vgw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4dcNCzYKaU8yqVyhBoUyr8CwTAgBxgmUmDbR8bnQPpc=; b=i2OzZFWLdStKkap1eOOtcFmdN9
 WvSTcqx+2UbftXmFKoObt+uD2IkK1erdKjAeq3dqeKnAcfeXgNRkzxYx4b2055SUbKA8HkIDe90+Q
 9PgpjzjJhI0sWPpDcu9uSbsPLIrYGSbdhl4eXnKh/inQvaRlu4cv2PrcvUwUP/CFnbYM=;
Received: from mail-ot1-f49.google.com ([209.85.210.49])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1llChs-004K5k-KR
 for openipmi-developer@lists.sourceforge.net; Mon, 24 May 2021 15:41:30 +0000
Received: by mail-ot1-f49.google.com with SMTP id
 h24-20020a9d64180000b029036edcf8f9a6so1311863otl.3
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 24 May 2021 08:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=4dcNCzYKaU8yqVyhBoUyr8CwTAgBxgmUmDbR8bnQPpc=;
 b=I6ucW0gsmv9GXh2UeJAOVE7pTQo41QoTCF0AMAzGtHj3sMngaptn5NEaWzkhPcaxQz
 7RNNQufSi8UO76a/vJnOANF0etsn31hTUdRfA9+FBpUn7Z9OTl4SwzlxeTHDkrfYnjZk
 pGtoYzC8G77lYdzSmk1xwlGSozjA3Bg2TKak8Zeu77bZaE2wA3KGAOxophrdaWupZkn0
 oH85zl32DxLtcj3F0zUIeQSUWpbTmMb37JzyIcZT6VR113aq7HyipWxbex2eZKF+Dr8G
 wkJEa3zUY9k8zpv+As8XfFegAdkSqJYSLiuluacXvn6ETgW3ICP+DdgLb7gJXnzEG/29
 Y1Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=4dcNCzYKaU8yqVyhBoUyr8CwTAgBxgmUmDbR8bnQPpc=;
 b=c6KcRUF4cnDkbTZjiVngNAGRg4Ycv13ONfScq4kXU7w7Sn7s0L5SkPteumYP9ClA4I
 K5CE82gy8iDHZNAbe1UAVhK53pp9+1Cnsy+pSIdsmhAys/t+eCQNANY/2/dqk6BguZLv
 zlYbcOBncRkZIOeRi163LvpzLuPIvJTjhfMsE2hmXXh5jg2T46UJhayVi/lbEJVlYj5E
 yGA6vhrovWrO45xz6YEXPn6tiQyAH/rnw+siNpAji2LaWKd3wC9cr8sNXkNkx0Md+QFE
 bEKLJFhS8nZ1rEBF6Me4XkFX4asjqPCCSs5EgA196GxdIHdMPixhxJo4n9pvUuo6ERw0
 3H3g==
X-Gm-Message-State: AOAM532JUllYIjzbHuHn0ZueRUbXp9ibHyCljtvY27B0h7z/YDSFfb5L
 /Yl+k6MxxCHuu7K/2TxiIQ==
X-Google-Smtp-Source: ABdhPJx9uG7vgPNQiz9ZqMwDWzSLYJO8Mq3ppmWDr/gyp6m3yZkxHQ20XoOv2XHvWKoAk0irDjn2rQ==
X-Received: by 2002:a05:6830:903:: with SMTP id
 v3mr19391088ott.192.1621870882919; 
 Mon, 24 May 2021 08:41:22 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id o18sm3142274otp.61.2021.05.24.08.41.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 May 2021 08:41:21 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:8d79:38d0:810:96ad])
 by serve.minyard.net (Postfix) with ESMTPSA id C2CCE180105;
 Mon, 24 May 2021 15:41:20 +0000 (UTC)
Date: Mon, 24 May 2021 10:41:19 -0500
From: Corey Minyard <minyard@acm.org>
To: Andrew Jeffery <andrew@aj.id.au>
Message-ID: <20210524154119.GN2921206@minyard.net>
References: <20210510054213.1610760-1-andrew@aj.id.au>
 <20210510054213.1610760-6-andrew@aj.id.au>
 <20210521171412.GI2921206@minyard.net>
 <79f3c6d1-1f74-46ec-99a0-37faf11517b6@www.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <79f3c6d1-1f74-46ec-99a0-37faf11517b6@www.fastmail.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.49 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.49 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1llChs-004K5k-KR
Subject: Re: [Openipmi-developer] [PATCH v3 05/16] ipmi: kcs_bmc: Turn the
 driver data-structures inside-out
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
 Benjamin Fair <benjaminfair@google.com>,
 openipmi-developer@lists.sourceforge.net, "Chia-Wei,
 Wang" <chiawei_wang@aspeedtech.com>, linux-arm-kernel@lists.infradead.org,
 Zev Weiss <zweiss@equinix.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, May 24, 2021 at 10:23:36AM +0930, Andrew Jeffery wrote:
> 
> 
> On Sat, 22 May 2021, at 02:44, Corey Minyard wrote:
> > On Mon, May 10, 2021 at 03:12:02PM +0930, Andrew Jeffery wrote:
> > > Make the KCS device drivers responsible for allocating their own memory.
> > > 
> > > Until now the private data for the device driver was allocated internal
> > > to the private data for the chardev interface. This coupling required
> > > the slightly awkward API of passing through the struct size for the
> > > driver private data to the chardev constructor, and then retrieving a
> > > pointer to the driver private data from the allocated chardev memory.
> > > 
> > > In addition to being awkward, the arrangement prevents the
> > > implementation of alternative userspace interfaces as the device driver
> > > private data is not independent.
> > > 
> > > Peel a layer off the onion and turn the data-structures inside out by
> > > exploiting container_of() and embedding `struct kcs_device` in the
> > > driver private data.
> > 
> > All in all a very nice cleanup.  A few nits inline.
> > 
> > > 
> > > Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> > > Reviewed-by: Zev Weiss <zweiss@equinix.com>
> > > ---
> > >  drivers/char/ipmi/kcs_bmc.c           | 19 +++++++--
> > >  drivers/char/ipmi/kcs_bmc.h           | 12 ++----
> > >  drivers/char/ipmi/kcs_bmc_aspeed.c    | 56 +++++++++++++------------
> > >  drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 60 ++++++++++++++++++---------
> > >  drivers/char/ipmi/kcs_bmc_npcm7xx.c   | 37 ++++++++++-------
> > >  5 files changed, 111 insertions(+), 73 deletions(-)
> > > 
> > > diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
> > > index ef5c48ffe74a..83da681bf49e 100644
> > > --- a/drivers/char/ipmi/kcs_bmc.c
> > > +++ b/drivers/char/ipmi/kcs_bmc.c
> > > @@ -44,12 +44,23 @@ int kcs_bmc_handle_event(struct kcs_bmc *kcs_bmc)
> > >  }
> > >  EXPORT_SYMBOL(kcs_bmc_handle_event);
> > >  
> > > -struct kcs_bmc *kcs_bmc_ipmi_alloc(struct device *dev, int sizeof_priv, u32 channel);
> > > -struct kcs_bmc *kcs_bmc_alloc(struct device *dev, int sizeof_priv, u32 channel)
> > > +int kcs_bmc_ipmi_add_device(struct kcs_bmc *kcs_bmc);
> > 
> > The above (and it's remove function) should be in an include file.
> 
> This is a short-term hack while I'm refactoring the code. It goes away 
> in a later patch when we switch to using an ops struct.
> 
> I didn't move it to a header as it's an implementation detail at the 
> end of the day. I see headers as describing a public interface, and in 
> the bigger picture this function isn't part of the public API. But 
> maybe it's too tricky by half. My approach here generated some 
> discussion with Zev as well.
> 
> > 
> > > +void kcs_bmc_add_device(struct kcs_bmc *kcs_bmc)
> > 
> > This should return an error so the probe can be failed and cleaned up
> > and so confusing message don't get printed after this in one case.
> 
> Hmm. I did this because the end result of the series is that we can 
> have multiple chardev interfaces in distinct modules exposing the one 
> KCS device in the one kernel. If more than one of the chardev modules 
> is configured in and one of them fails to initialise themselves with 
> respect to the device driver I didn't think it was right to fail the 
> probe of the device driver (and thus remove any chardev interfaces that 
> did succeed to initialise against it).
> 
> But this does limit the usefulness of the device driver instance in the 
> case that only one of the chardev interfaces is configured in and it 
> fails to initialise.
> 
> So I think we need to decide on the direction before I adjust the 
> interface here. The patches are architected around the idea of multiple 
> chardevs being configured in to the kernel build and all are exposed at 
> runtime.

Ok, I understand.  The host IPMI driver will attempt to start all
interfaces, if none fail to come up it will return an error, but if any
come up it will not return an error.  So it's a similar situation.

I stole that from something else, but I can't remember what.  I don't
know what the best policy is, really, that was kind of a compromise and
nobody has complained about it.

I will say that the success print in aspeed_kcs_probe() needs to not
happen if there is a failure, though.

-corey

> 
> The serio subsystem does have the 'drvctl' sysfs knob that allows 
> userspace to dictate which serio chardev interface they want to connect 
> to a serio device driver. Maybe that's preferred over my "connect them 
> all" strategy?
> 
> Andrew
> 
> 
> _______________________________________________
> Openipmi-developer mailing list
> Openipmi-developer@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/openipmi-developer


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
