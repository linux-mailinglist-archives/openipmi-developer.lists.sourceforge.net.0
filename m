Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4B956A4DB
	for <lists+openipmi-developer@lfdr.de>; Thu,  7 Jul 2022 16:03:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o9S63-0004Re-3P; Thu, 07 Jul 2022 14:03:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <groeck7@gmail.com>)
 id 1o9S61-0004RD-RT; Thu, 07 Jul 2022 14:03:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=afbiyF16Fd4Ewaaf3EKKCpvpR7aHAsNAQp7K3TuQXs4=; b=jAmgg5RRo6KmWrXcL5H/2nbkfA
 H6CjAUaZtKJY8C+TVUSmur3VDTjsvpv/rnN2e0xLR8whj935vvGJFdRwls8typKAt7pHFoZenBJyH
 6k1wXbj6v8n3zDXyZi3hWmhUAcTz8XwXalgFSen3qqU7iez7r5NiSNQx3JChrpQQThhI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=afbiyF16Fd4Ewaaf3EKKCpvpR7aHAsNAQp7K3TuQXs4=; b=Vzl1tWP/xOw0CE8R3msGsZkYOI
 2khiIwhw7mYjDmyDLBziIswsuvuNv/Up5gedCT4hOPVLt7dEvJC/PjqquR5sLrQIIRE0bAvqZBKLJ
 k7+BcpqlWuekZ+2TBsF6mIoNYcA6A+Y2yeqsQDde5bZpUaXriE9qcK8XW0G1lODHfWmc=;
Received: from mail-pf1-f175.google.com ([209.85.210.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o9S5y-0006D4-4z; Thu, 07 Jul 2022 14:03:10 +0000
Received: by mail-pf1-f175.google.com with SMTP id a15so19544147pfv.13;
 Thu, 07 Jul 2022 07:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=afbiyF16Fd4Ewaaf3EKKCpvpR7aHAsNAQp7K3TuQXs4=;
 b=EzpeppBfdoHkOWruUNAYNHzOi8S5lBuVkWR/uarc/O7MDVJ2qM1NUNdy3hxzZeKinw
 1f6tPe15AftcBiSP1Sugt5jiQpAKlLcyz+gPyHgHTvK6IkiuSg6SYHkmzqBCpGaHkm3K
 GirawtqITR+EFkG0pF8QxPm0bxzk97EH7JYJxQXFRi4d1kRfsZVOuxKRapjByLByJ3DF
 qAVqAZfaAfJT+F8T/W2rPtPmXy6/uaYwejGaDWQ5Frl3XCXwsQlqWF67lU3BIXdseGBS
 CTJ5pH+oR76s++4uNTCxHCZwHNyWF4xdxY3ay2k5fQlKGRbstnEbIjnAVDZkl7wMQgN9
 oSpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=afbiyF16Fd4Ewaaf3EKKCpvpR7aHAsNAQp7K3TuQXs4=;
 b=yt67BADa7r3yNaCx21kwVsPdfUOJXp/wBkT0gCN+L1XgARD51H/4Ee1krfTkjd4q+v
 EDq1/SiQLYc/Y6qP0kJoR4hr06viPVq8PKxvokFz3RKDLBYHDbahEKpl7PymL3qZYx3r
 cr7lp4tNhUMwRbt+IbH8HrWxpMngqr2ZRsCqorVMj9BPMDnJ8zNO1+ksmhVL4VbfN+ek
 9A3YbO3Q+FsIGuBMNgio9lv2PnYheIWkaq9EvVwrcR8wnnZH71/uR2FiQhSnklIARghj
 NBwj/524xBPykvWYWRkoOjYOHb4GKioOVVFL4WBKOMJiS4o6QpW84GicFiYM63zFKksw
 PhOw==
X-Gm-Message-State: AJIora/V5hPLoiCbxFHVWTe0B6FUWtubqgfPjGXSmvQTyaWyiH4V1tJ8
 Tr+lEhLOytMLzubL3rrz4p8=
X-Google-Smtp-Source: AGRyM1uGEg1zRLKU3mt/8yK/HfEqKFBdv1eoQpzxhqHLW6DjIp1gLh6JEsU/RWRdBfoHFypH/TfaNQ==
X-Received: by 2002:a17:90b:4c8f:b0:1ec:cdd0:41b7 with SMTP id
 my15-20020a17090b4c8f00b001eccdd041b7mr5420238pjb.119.1657202580508; 
 Thu, 07 Jul 2022 07:03:00 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 k127-20020a632485000000b004148cbdd4e5sm1215293pgk.57.2022.07.07.07.02.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Jul 2022 07:02:59 -0700 (PDT)
Date: Thu, 7 Jul 2022 07:02:58 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Greg KH <gregkh@linuxfoundation.org>
Message-ID: <20220707140258.GA3492673@roeck-us.net>
References: <62c683a2.g1VSVt6BrQC6ZzOz%lkp@intel.com>
 <YsaUgfPbOg7WuBuB@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YsaUgfPbOg7WuBuB@kroah.com>
X-Spam-Score: 0.6 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jul 07, 2022 at 10:08:33AM +0200, Greg KH wrote: [
 ... ] > > > > Unverified Error/Warning (likely false positive, please contact
 us if interested): > > > > arch/x86/events/core.c:2114 init_hw_perf_events()
 warn: missing error code 'err' > > drivers/ [...] 
 Content analysis details:   (0.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [groeck7[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.175 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [groeck7[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.175 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1o9S5y-0006D4-4z
Subject: Re: [Openipmi-developer] [linux-next:master] BUILD REGRESSION
 088b9c375534d905a4d337c78db3b3bfbb52c4a0
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
Cc: nvdimm@lists.linux.dev, legousb-devel@lists.sourceforge.net,
 dri-devel@lists.freedesktop.org, linux-sctp@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-samsung-soc@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-pm@vger.kernel.org,
 usbb2k-api-dev@nongnu.org, linux-omap@vger.kernel.org,
 megaraidlinux.pdl@broadcom.com, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-perf-users@vger.kernel.org,
 netfilter-devel@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-wpan@vger.kernel.org, linux-fbdev@vger.kernel.org,
 linux-parport@lists.infradead.org, linux-doc@vger.kernel.org,
 samba-technical@lists.samba.org, linux-cxl@vger.kernel.org,
 virtualization@lists.linux-foundation.org, dm-devel@redhat.com,
 target-devel@vger.kernel.org, dev@openvswitch.org, linux-cifs@vger.kernel.org,
 kernel test robot <lkp@intel.com>, linux-clk@vger.kernel.org,
 linux-rockchip@lists.infradead.org, iommu@lists.linux.dev,
 coreteam@netfilter.org, linux-media@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, greybus-dev@lists.linaro.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-block@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-integrity@vger.kernel.org, linux-efi@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-fpga@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-mtd@lists.infradead.org, cgroups@vger.kernel.org,
 linux-phy@lists.infradead.org, sound-open-firmware@alsa-project.org,
 linux-rdma@vger.kernel.org, linux-staging@lists.linux.dev,
 amd-gfx@lists.freedesktop.org, isdn4linux@listserv.isdn4linux.de,
 linux-input@vger.kernel.org, linux-ext4@vger.kernel.org,
 ath11k@lists.infradead.org, mjpeg-users@lists.sourceforge.net,
 openipmi-developer@lists.sourceforge.net, linux-hwmon@vger.kernel.org,
 linux-parisc@vger.kernel.org, linux-ide@vger.kernel.org,
 linux-mmc@vger.kernel.org, iommu@lists.linux-foundation.org,
 keyrings@vger.kernel.org, netdev@vger.kernel.org, kvm@vger.kernel.org,
 damon@lists.linux.dev, linux-mm@kvack.org,
 accessrunner-general@lists.sourceforge.net,
 linux1394-devel@lists.sourceforge.net, linux-leds@vger.kernel.org,
 rds-devel@oss.oracle.com, linux-x25@vger.kernel.org, dccp@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-serial@vger.kernel.org,
 devicetree@vger.kernel.org, linux-nfc@lists.01.org,
 osmocom-net-gprs@lists.osmocom.org, apparmor@lists.ubuntu.com,
 linux-raid@vger.kernel.org, linux-bcache@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-scsi@vger.kernel.org, patches@opensource.cirrus.com,
 linux-unionfs@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 ntb@lists.linux.dev, tipc-discussion@lists.sourceforge.net,
 linuxppc-dev@lists.ozlabs.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Jul 07, 2022 at 10:08:33AM +0200, Greg KH wrote:

[ ... ]
> > 
> > Unverified Error/Warning (likely false positive, please contact us if interested):
> > 
> > arch/x86/events/core.c:2114 init_hw_perf_events() warn: missing error code 'err'
> > drivers/android/binder.c:1481:19-23: ERROR: from is NULL but dereferenced.
> > drivers/android/binder.c:2920:29-33: ERROR: target_thread is NULL but dereferenced.
> > drivers/android/binder.c:353:25-35: ERROR: node -> proc is NULL but dereferenced.
> > drivers/android/binder.c:4888:16-20: ERROR: t is NULL but dereferenced.
> > drivers/base/regmap/regmap.c:1996:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
> > drivers/char/random.c:869:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
> > drivers/firmware/arm_scmi/clock.c:394:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
> > drivers/firmware/arm_scmi/powercap.c:376:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
> > drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c:1214:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
> > drivers/gpu/drm/amd/display/dc/os_types.h: drm/drm_print.h is included more than once.
> > drivers/gpu/drm/bridge/ite-it66121.c:1398:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
> > drivers/greybus/operation.c:617:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
> 
> <snip>
> 
> When the compiler crashes, why are you blaming all of these different
> mailing lists?  Perhaps you need to fix your compiler :)
> 

To be fair, it says above "likely false positive, please contact us
if interested". Also, the 32-bit build errors _are_ real, and the NULL
dereferences in the binder driver are at the very least suspicious.

Guenter


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
