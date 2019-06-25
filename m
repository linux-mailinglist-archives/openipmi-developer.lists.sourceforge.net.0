Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 257F95547D
	for <lists+openipmi-developer@lfdr.de>; Tue, 25 Jun 2019 18:28:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hfoJM-0002gi-L9; Tue, 25 Jun 2019 16:28:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <cminyard@mvista.com>) id 1hfoJG-0002gK-0E
 for openipmi-developer@lists.sourceforge.net; Tue, 25 Jun 2019 16:28:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NV//u4VQ4smXpqQmvGorClDiJDV+VpTn9UWqS2TgkN4=; b=gTE9a8Qwh1KN7Z54Ny3lh+u/9L
 7hiDapmrZWHqNrKxFZ8qxj/xP+k/T6Irr8+kxE3Gz4TBREb2KnwTjJ3CkBthuAux2V6PxMVqbPImS
 u7+ItWsL+/rokM63Dg362zPTvDbxyeWwFul43XyqpXEfDpiIUbdI/A8Lul7teB5l3ZMY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NV//u4VQ4smXpqQmvGorClDiJDV+VpTn9UWqS2TgkN4=; b=R1gJYLcOvmYsALoKvMuvSNBA/M
 7wjOBhh+hfSa7sWvpvbcDqqRC4iZ8n0+5dlm+TA/bxW7tR6ODEl8F4pm8oGtE4oI2ser+NZzx1Gf9
 Xjf3YR6ZbBXM4CMhv1H3fHFHgRzEmbpXExeje4f1KL3q6bP0H0u7fJBz31Od8HbdE0eA=;
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hfoJB-00DLt7-Qo
 for openipmi-developer@lists.sourceforge.net; Tue, 25 Jun 2019 16:28:49 +0000
Received: by mail-ot1-f50.google.com with SMTP id i4so18134178otk.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 25 Jun 2019 09:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mvista-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NV//u4VQ4smXpqQmvGorClDiJDV+VpTn9UWqS2TgkN4=;
 b=qeDg3u33TGDPRzW2YJYc2fTzEu66060W/1Qf2WO41bP8mRZKPh7+EovkyB/1DdZ5Gg
 PxZ5HGpWqhsjyyPyf3dXY3x2s2Z+yxbl7Te9d0H13qeFgHmtYMAOD0b9uWZjt/U8UCcV
 WYNceXkpONhZ4BRmkNUwDfVfQHFJ5k20OistMoLUlcFeYfvQ36pGbM7VyBC7xxrQK+wt
 JNFOEgy/KVrB3OP+vmccNFpvzOEEFii4iz3+QgelmozXtCuWPeXv/VEPUwJknv8/kskX
 l2VNkwPDe1dz4QBEBdPwhpc6E7HhtjCnzw4TBXezPDeoTVaIJYM/NDHLGVvAQLpZ4C66
 YQ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=NV//u4VQ4smXpqQmvGorClDiJDV+VpTn9UWqS2TgkN4=;
 b=eX7BT6MRw1WdsknytKEsy4NCr/j/nq0kpVOiwSrjlpsnyVoRKtldbi8HJ9f7E7ibld
 qaZmhEP5CyF4zGB0mzb+Y0j2qnR7LfT5ht24X4DyA9Eke7XPn5U3CskpHoDYcMKH27z2
 qXEyQLmcW6/6H8mmqHgNDQIXTVRksOQs5AvC8/4jfBV6STPYzdDc/4pROuZlzNG3n1JK
 CybwUXfhPVRyCmL3FXce894wdN5sy8LI5nA9tIj4Bn9UZBKRz/hn/8IOid6Ls3vkgd0Q
 ec75rx6EBNGHCGapN5PBrUAgTWhKTpbdSoeMi1kPJh6glk5ccFXcaU0s0OxetGUJYsZ/
 Hg7g==
X-Gm-Message-State: APjAAAV88KWrY7d2jdywSlSFmxRMAPj6eaIdpTLSsaVWhtCYFx/h+GLS
 XMeNd1UVWz8r3FcLW3BrGV7Ja/4AbHo=
X-Google-Smtp-Source: APXvYqzxa8faNwJWCzOUDg+Gj5V6WBZaSl0xc1nO2yaU6rOshSF4R1sh0RJK4qxs1DR/xLfTXuv/EA==
X-Received: by 2002:a9d:61c7:: with SMTP id h7mr7859798otk.357.1561478150754; 
 Tue, 25 Jun 2019 08:55:50 -0700 (PDT)
Received: from minyard.net ([2001:470:b8f6:1b:686e:97ca:5163:b01e])
 by smtp.gmail.com with ESMTPSA id l92sm5405758otc.71.2019.06.25.08.55.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 08:55:49 -0700 (PDT)
Date: Tue, 25 Jun 2019 10:55:48 -0500
From: Corey Minyard <cminyard@mvista.com>
To: Tony Camuso <tcamuso@redhat.com>
Message-ID: <20190625155548.GG5565@minyard.net>
References: <352582dd-a26d-a788-d63b-36aa9c029fb0@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <352582dd-a26d-a788-d63b-36aa9c029fb0@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.50 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.50 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1hfoJB-00DLt7-Qo
Subject: Re: [Openipmi-developer] IPMI test suite automation
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Jun 25, 2019 at 10:24:29AM -0400, Tony Camuso wrote:
> 
> I'd like to know if there are any test suites out there for
> automated IPMI testing, especially as new features emerge and
> new bugs are exposed.
> 
> We have a few of our own, but they are relatively primitive
> and don't provide a breadth and depth of coverage that could
> affirm full functionality or catch all regressions.
> Unfortunately, many regressions and functionality misses are
> caught by our customers.
> 
> I know that Corey uses a VM with virtual IPMI, and I'd like
> to know more about that, if there is a link somewhere that
> has the information.
 
qemu has an IPMI simulator built into it, either with a local minimal
BMC (basically with just a watchdog) and it allows connecting to an
external BMC (like ipmi_sim in openipmi) for more complex simulation.
In fact, some people are using this to do cluster management.  If you
search "qemu openipmi" you will find a number of resources.

I also have a lot of pending extensions to the qemu IPMI simulator,
for SSIF and PCI interfaces, for instance, that I haven't found time
to get ready.

ipmi_sim also provides LAN connections, so it allows testing LAN interfaces
with simulation.

> Virtual technology frees us from having to find systems using
> all the various methods of reporting the IPMI as well as a
> means to test all the functionality, and it provides a better
> way to automate testing.

Indeed it has been very helpful for me.  That's why I wrote it :-).
But I'm not sure what you mean by testing here, many components need
to be tested:

* BMC
* Driver
* Libraries
* Applications

Testing BMCs is probably the weakest link.  From my experience, most vendors
just get IPMI working to so that their own management applications will work
and don't properly implement all the things that are required for a general
application to work (entity presence and entity containment are two that are
notoriously bad).  I know Intel has some sort of test suite, but I don't
know much about it, and you really can't test all that stuff easily, though
I suppose you could test a lot.  It would be hard.

A driver test suite would be really nice, and that something that is
probably fairly doable.  I don't envision the driver changing very much
in the future, though.  It's really something I should have done long
ago :(.  The difficulty here is that many issues I see are creative
interpretations of the standard in implementations.

The OpenIPMI library has some built-in tests (make check) using ipmi_sim.
The exercise basic functionality in most places, but aren't complete by
any means.  I don't know if ipmitool or freeipmi have anything.

It would be really nice if applications could have a way to use a simulator
to test, and ipmi_sim could easily provide that (either through qemu or
through a LAN interface).  It's not very easy to use, though, it needs a
lot of work and documentation to make it user-friendly.  Setting up a BMC
with all the sensors, SDRs, FRU data, etc. is a big job, even with a
user-friendly tool.

I'm happy to work with volunteers on any of these things.  I don't have a
lot of time to spend on anything like this in the near future.  IPMI doesn't
seem to be going away.

-corey

> 
> Regards,
> Tony Camuso
> Red Hat


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
