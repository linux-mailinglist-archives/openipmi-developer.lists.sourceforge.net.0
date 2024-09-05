Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3630F96DEFE
	for <lists+openipmi-developer@lfdr.de>; Thu,  5 Sep 2024 17:56:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1smEqi-0005Nh-8c;
	Thu, 05 Sep 2024 15:56:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <helgaas@kernel.org>) id 1smEqh-0005Nb-Mz
 for openipmi-developer@lists.sourceforge.net;
 Thu, 05 Sep 2024 15:56:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yzZkFVRJiRvjDD9l3UEh7xI6BIOYXW99Zpx5yctWwNY=; b=Dr3ybp8322wa98vZDVgwc7pWjC
 Mu3ZPI2y/5Khvad1AYxXVxNXq5ccO7KnQJUfWfU6K5BHzvcKCSbNghW00ANxiX+u5vspotMlh2BTI
 9oEDuAZgnd7UjCiSxVhBNn/iRSD7is9C7tT5lUULddLy50AfF+wrxyc9eHobRQmI7zdE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yzZkFVRJiRvjDD9l3UEh7xI6BIOYXW99Zpx5yctWwNY=; b=L
 j0LRXByW2/3q73PB9LGX/C2+Gxlu1LHQf41inGStUm0mS3Nu44A0yqved+2DAdVVUWTzAfslukl4K
 W9CPzigCw5V38m0B5iowwPoi/5Bzn3rHaQJxCCOcWjw7UpaVk+ojBQRU7k1O0hH72B84jE2xUnbIb
 WHadoYO9B7zGUDtk=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1smEqg-0003fK-Ek for openipmi-developer@lists.sourceforge.net;
 Thu, 05 Sep 2024 15:56:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 7C1DDA44D91;
 Thu,  5 Sep 2024 15:56:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3910CC4CEC3;
 Thu,  5 Sep 2024 15:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1725551791;
 bh=SbiTllZxgjb4Z1LIvyrQY8muQQ4twsbvg/wM/LIgpFA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=PGQUZ47qOlkivM3ccuS+8SWeD5qbn9BbY+rd3e0/I8zh9E6QuDm97fyLOEntEp8v5
 agrNCunp5cXCKs+3qJ/BJJHWNzieyJtIvqvVB2mkbrIjwb9WR9k4BA1uY3yvI0DtIQ
 d6CPoeY565B6eMnx8OPGQV7eoQRTjGs+7PI6Bm8g65QS9Hfj35yaLxB/bkFQNbRxo3
 Hgh2e037JwEvcipMqA7efA0ZJqUHx9CxdisiZtbSsBh1Jk3ErfqCYLysYpq3nWo0yc
 HRwpfHAsSyMB8oXi8HLEyOqUcyEb7m9rpuPz34H629j7JWlhamoDe4HA+S8T9+nqpg
 bQTmWM8O7oSNA==
Date: Thu, 5 Sep 2024 10:56:29 -0500
To: Mariusz Tkaczyk <mariusz.tkaczyk@linux.intel.com>
Message-ID: <20240905155629.GA389032@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240905081925.00001d14@linux.intel.com>
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Sep 05, 2024 at 08:19:25AM +0200, Mariusz Tkaczyk
 wrote: > On Tue, 3 Sep 2024 17:18:20 -0500 > Bjorn Helgaas <helgaas@kernel.org>
 wrote: > > > On Tue, Aug 27, 2024 at 02:03:48PM -0700, Tony Hu [...] 
 Content analysis details:   (-0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1smEqg-0003fK-Ek
Subject: Re: [Openipmi-developer] [PATCH] PCI: Introduce Cray ClusterStor
 E1000 NVMe slot LED driver
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
From: Bjorn Helgaas via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Bjorn Helgaas <helgaas@kernel.org>
Cc: minyard@acm.org, linux-pci@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, bhelgaas@google.com,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Sep 05, 2024 at 08:19:25AM +0200, Mariusz Tkaczyk wrote:
> On Tue, 3 Sep 2024 17:18:20 -0500
> Bjorn Helgaas <helgaas@kernel.org> wrote:
> 
> > On Tue, Aug 27, 2024 at 02:03:48PM -0700, Tony Hutter wrote:
> > > Add driver to control the NVMe slot LEDs on the Cray ClusterStor E1000.
> > > The driver provides hotplug attention status callbacks for the 24 NVMe
> > > slots on the E1000.  This allows users to access the E1000's locate and
> > > fault LEDs via the normal /sys/bus/pci/slots/<slot>/attention sysfs
> > > entries.  This driver uses IPMI to communicate with the E1000 controller to
> > > toggle the LEDs.  
> > 
> > I hope/assume the interface is the same as one of the others, i.e.,
> > the existing one added for NVMe behind VMD by
> > https://git.kernel.org/linus/576243b3f9ea ("PCI: pciehp: Allow
> > exclusive userspace control of indicators") or the new one for NPEM
> > and the _DSM at
> > https://lore.kernel.org/linux-pci/20240814122900.13525-3-mariusz.tkaczyk@linux.intel.com/
> > 
> > I suppose we intend that the ledmon utility will be able to drive
> > these LEDs?  Whatever the user, we should try to minimize the number
> > of different interfaces for this functionality.
> 
> Ledmon won't support it, at least not in current form. Ledmon
> support for pciehp attention is limited to VMD, i.e. first we must
> find VMD driver then we are looking for slot/attention.  I'm not
> familiar with any attempt to add support for this in ledmon.
> 
> From the end user perspective, I don't like pciehp/attention because
> we are refereeing to pciehp driver not pcieport and to determine
> proper slot we need to do additional matching by slot/address. I
> would be simpler.
> https://github.com/intel/ledmon/blob/main/src/lib/vmdssd.c#L100

All I'm trying to say is that NPEM, the related _DSM, and the VMD
special case are all ways to control NVMe slot IDs.  This Cray thing
is another.  We already have two user interfaces (the NPEM/_DSM one
and the VMD one), and I'd like to avoid adding a third.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
