Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BE63C967BEF
	for <lists+openipmi-developer@lfdr.de>; Sun,  1 Sep 2024 21:36:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1skqMr-0005MT-71;
	Sun, 01 Sep 2024 19:36:09 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <foo00@h08.hostsharing.net>) id 1skg95-0006aQ-43
 for openipmi-developer@lists.sourceforge.net;
 Sun, 01 Sep 2024 08:41:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QoBLEbnZd0TwDOZpzEzd2AQSJLfpxpovbDI+70oeplo=; b=ijoPPZg530mQgqhWfGpXI8S6JL
 RAzcd8kwi9weK+WRZdSxjwrc/EWdRDmL5U6uXi9whKvf0Q59zo5cFj2N26Gmpibd+g5c3ein0IufL
 XfvSr6q2OU7YwFsonYTVLZ5IhD9t2mehRrG0ufKMA5wtixvaC7QHkCSkDQ4l96zWWYlo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QoBLEbnZd0TwDOZpzEzd2AQSJLfpxpovbDI+70oeplo=; b=RNx1kS00epqXS49FR+NsbxgO9H
 uOK85gTU7lFK+ELhtpdU6q69WefS4VEXwJX/1EzT7t9ZnyXpNMXLPhJULjXMimgkylYFh+4jTT8Oi
 87EPpTU+lpSRSWajsAMT8O1Xjxk2T5hGhllQK+/Xw3mFZpl6AtiP0zMlsRHbeyKKsfO4=;
Received: from bmailout3.hostsharing.net ([176.9.242.62])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1skg93-00053v-AH for openipmi-developer@lists.sourceforge.net;
 Sun, 01 Sep 2024 08:41:15 +0000
Received: from h08.hostsharing.net (h08.hostsharing.net [83.223.95.28])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256
 client-signature RSA-PSS (4096 bits) client-digest SHA256)
 (Client CN "*.hostsharing.net", Issuer "RapidSSL TLS RSA CA G1" (verified OK))
 by bmailout3.hostsharing.net (Postfix) with ESMTPS id 61E51100D9438;
 Sun,  1 Sep 2024 10:25:51 +0200 (CEST)
Received: by h08.hostsharing.net (Postfix, from userid 100393)
 id 1E16D11B173; Sun,  1 Sep 2024 10:25:51 +0200 (CEST)
Date: Sun, 1 Sep 2024 10:25:51 +0200
From: Lukas Wunner <lukas@wunner.de>
To: Tony Hutter <hutter2@llnl.gov>
Message-ID: <ZtQlD7PPE4TUhZf4@wunner.de>
References: <40c7776f-b168-4cbe-a352-122e56fe7b31@llnl.gov>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <40c7776f-b168-4cbe-a352-122e56fe7b31@llnl.gov>
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Aug 27, 2024 at 02:03:48PM -0700, Tony Hutter wrote:
 > Add driver to control the NVMe slot LEDs on the Cray ClusterStor E1000.
 > The driver provides hotplug attention status callbacks for the [...] 
 Content analysis details:   (-0.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [176.9.242.62 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1skg93-00053v-AH
X-Mailman-Approved-At: Sun, 01 Sep 2024 19:36:08 +0000
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
Cc: bhelgaas@google.com, linux-pci@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, minyard@acm.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Aug 27, 2024 at 02:03:48PM -0700, Tony Hutter wrote:
> Add driver to control the NVMe slot LEDs on the Cray ClusterStor E1000.
> The driver provides hotplug attention status callbacks for the 24 NVMe
> slots on the E1000.  This allows users to access the E1000's locate and
> fault LEDs via the normal /sys/bus/pci/slots/<slot>/attention sysfs
> entries.  This driver uses IPMI to communicate with the E1000 controller to
> toggle the LEDs.

The PCISIG has converged on the NPEM interface (PCIe r6.2 sec 6.28 and
7.9.19) to control LEDs on storage enclosures.  We're in the process of
upstreaming that:

https://lore.kernel.org/all/20240814122900.13525-1-mariusz.tkaczyk@linux.intel.com/

Of course proprietary interfaces such as the Cray one are still
upstreamable as long as you're willing to maintain them.

The NPEM implementation linked above models each LED as a led_classdev.
I'd suggest following that instead of using the legacy "attention"
interface in sysfs.  Overloading the {set,get}_attention_status()
callbacks like you're doing here is not acceptable upstream IMO.

You need to be careful about the lifetime of the pci_dev below which
you're adding led_classdevs (or of which you're modifying the
{set,get}_attention_status() callbacks) because pci_devs can be removed
via sysfs at any time.

Basically what you need to do is find the pci_dev in craye1k_new_smi()
and acquire a reference on it with pci_dev_get().  Install a bus notifier
so that you get notified when the pci_dev is removed.  In the notifier,
you need to remove the ledclass_devs and release the reference on the
pci_dev with pci_dev_put().  See here for an example how to add a
notifier for pci_bus_type:

https://github.com/l1k/linux/commit/d2d5296785c7

The statistics should live in debugfs instead of regular sysfs.

The command line options should likewise live in debugfs.
New command line options are generally ill received because the
expectation is that everything is configured correctly automatically
without the user having to fiddle with command line options.

Please add documentation for the user space ABI you're introducing to
Documentation/ABI/testing/sysfs-bus-pci.

The MODULE_SOFTDEP("pre: pciehp") doesn't really make any sense
because pciehp is always builtin or disabled, but never modular.

Thanks,

Lukas


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
