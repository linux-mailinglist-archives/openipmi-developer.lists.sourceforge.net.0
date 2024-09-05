Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFC096F4F6
	for <lists+openipmi-developer@lfdr.de>; Fri,  6 Sep 2024 15:02:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1smYbM-0001P9-Gh;
	Fri, 06 Sep 2024 13:02:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mariusz.tkaczyk@linux.intel.com>) id 1sm5qG-0000Wb-0u
 for openipmi-developer@lists.sourceforge.net;
 Thu, 05 Sep 2024 06:19:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NO54XwWd3oMOnU/dIPa4CMF/E4i687sPgq00KObOq6o=; b=BgdVzo43iUpeQmAoAQXrHD4Zgk
 jbuLseU2/Iwy/k85HE1piwIblGNZRqq1H0Z809QmzHknhinLMZtFK6AgY9q1l8C2XtV0IsBK3lFvq
 3DZd9o/N4bRbtKoylWfx4QskQGIKe0uu7YnEiDbhQtjNXwCRBux6FC6xvpA2HnweY1zc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NO54XwWd3oMOnU/dIPa4CMF/E4i687sPgq00KObOq6o=; b=iqGBTigIbim1Cm3qRXOL1mOhyq
 UN6Hk3NnBDJ7I+kFHBJoqbKwhzSHfKD8klG08iEFwP04ldL+Jv/+N6t21PIhXCiiomB2PJBNkOUNc
 LTQRXRmmvlALPDxRvGbiNz6PxvO5bB7wlcnJTOnNsoQfmBo6ogYXRlIHbKIJmVy6V/pc=;
Received: from mgamail.intel.com ([198.175.65.11])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sm5qE-0002Hd-GS for openipmi-developer@lists.sourceforge.net;
 Thu, 05 Sep 2024 06:19:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725517179; x=1757053179;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PUamt9EBsZmj1IRHlPey5ETLPvCHcB/WBQxHhNysqSY=;
 b=O3BQXuXEvIwgclmaWsSn3YOZ6FddVa4nuvEAK5HECy36spW+siegchQc
 6f7wjKctLAduZhZ7BeTnv8iDgtpj83XKeq7h8JRHxJEX5iIUQ3X4lUMF1
 4sWlPlexbZwq3EsXlKSn7UcT1kkXE4wYoH4loJZ6Qg+ZPHutETlagynn+
 b/nMbq2Fz9SELh9nSAe8iZtCQAUn91KC+rRVUOXTJAZYFo+cqi4VcJND3
 iMb7LNfXV6pDbXh2RGFOVq7fhju6sBuzWFPjvqtluFFb1ajANb1F1dOdJ
 7azqX84ETIgeyxn77PJoUBLJ36PIGhwAZv4UcHkQsNWLbMU7/5tFKb/sy w==;
X-CSE-ConnectionGUID: 04Br9JOESq661p0p2umxfA==
X-CSE-MsgGUID: dsXByZi+TjmoiACAAKhRLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="34783093"
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="34783093"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 23:19:33 -0700
X-CSE-ConnectionGUID: GHdnaViQS0+VSO49hxuNQA==
X-CSE-MsgGUID: ldMyRC/sQei5mGB1L5Ayrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="65352799"
Received: from mtkaczyk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.246.29.120])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 23:19:30 -0700
Date: Thu, 5 Sep 2024 08:19:25 +0200
From: Mariusz Tkaczyk <mariusz.tkaczyk@linux.intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Message-ID: <20240905081925.00001d14@linux.intel.com>
In-Reply-To: <20240903221820.GA26364@bhelgaas>
References: <40c7776f-b168-4cbe-a352-122e56fe7b31@llnl.gov>
 <20240903221820.GA26364@bhelgaas>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue,
 3 Sep 2024 17:18:20 -0500 Bjorn Helgaas <helgaas@kernel.org>
 wrote: > On Tue, Aug 27, 2024 at 02:03:48PM -0700, Tony Hutter wrote: > >
 Add driver to control the NVMe slot LEDs on the Cray ClusterStor E1000. >
 > The driver provides hotplug attention status callbacks fo [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.175.65.11 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1sm5qE-0002Hd-GS
X-Mailman-Approved-At: Fri, 06 Sep 2024 13:02:11 +0000
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
Cc: minyard@acm.org, linux-pci@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, bhelgaas@google.com,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, 3 Sep 2024 17:18:20 -0500
Bjorn Helgaas <helgaas@kernel.org> wrote:

> On Tue, Aug 27, 2024 at 02:03:48PM -0700, Tony Hutter wrote:
> > Add driver to control the NVMe slot LEDs on the Cray ClusterStor E1000.
> > The driver provides hotplug attention status callbacks for the 24 NVMe
> > slots on the E1000.  This allows users to access the E1000's locate and
> > fault LEDs via the normal /sys/bus/pci/slots/<slot>/attention sysfs
> > entries.  This driver uses IPMI to communicate with the E1000 controller to
> > toggle the LEDs.  
> 
> I hope/assume the interface is the same as one of the others, i.e.,
> the existing one added for NVMe behind VMD by
> https://git.kernel.org/linus/576243b3f9ea ("PCI: pciehp: Allow
> exclusive userspace control of indicators") or the new one for NPEM
> and the _DSM at
> https://lore.kernel.org/linux-pci/20240814122900.13525-3-mariusz.tkaczyk@linux.intel.com/
> 
> I suppose we intend that the ledmon utility will be able to drive
> these LEDs?  Whatever the user, we should try to minimize the number
> of different interfaces for this functionality.

Ledmon won't support it, at least not in current form. Ledmon support for pciehp
attention is limited to VMD, i.e. first we must find VMD driver then we are
looking for slot/attention.
I'm not familiar with any attempt to add support for this in ledmon.

From the end user perspective, I don't like pciehp/attention because we are
refereeing to pciehp driver not pcieport and to determine proper slot we
need to do additional matching by slot/address. I would be simpler.
https://github.com/intel/ledmon/blob/main/src/lib/vmdssd.c#L100

Thanks,
Mariusz


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
