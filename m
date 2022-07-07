Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ABEE456A108
	for <lists+openipmi-developer@lfdr.de>; Thu,  7 Jul 2022 13:30:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o9Phh-0000pL-Lp; Thu, 07 Jul 2022 11:29:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <rong.a.chen@intel.com>)
 id 1o9N8N-0007Yh-Uz; Thu, 07 Jul 2022 08:45:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3XcWASS0fjiulrNbpmj4XVArlDC3tLgM6lju2mNzp+c=; b=S4RhrAV2UfdsrnoqCxcurye2zy
 rikpSTqg8oB9gZHN/NpF2i1rrKpO/w3rhpUzQ2zejBwmikeSmMLQLE6nlB8NqeVWiZDIuuwVbb3gl
 vetaVW39dPikW0U5ZcqAldhFeMlmE2lkfzPKMPGoyfiC7LhStPwVsgnlNXmRmWrJdwP0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3XcWASS0fjiulrNbpmj4XVArlDC3tLgM6lju2mNzp+c=; b=kV7MEoM93gkZGVl+TIOV+fA5OY
 A8pBPGTq83H69CXXC6KPmrwHsmuj6LZ7iE6MyudkXGsZIxiTYwxljFCLX8P0OWWSa3JVRWdLa/ttv
 EGGEsiILxPKT95uA67vNiD8qj8zEmjo6J2T+mVAAZtTsu/22oXdmixPb83aO1/wgH+PU=;
Received: from mga04.intel.com ([192.55.52.120])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o9N8J-009fWs-Md; Thu, 07 Jul 2022 08:45:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657183511; x=1688719511;
 h=subject:to:cc:references:from:message-id:date:
 mime-version:in-reply-to:content-transfer-encoding;
 bh=edbKoKalbvq90CBmxogPesuIiDjl8rwJ49B+zZvetjQ=;
 b=fw19T4nN+R7eCrA2zqwBKoAsjcI15C2ZDEmfRPqDN5T0/Z1m5f1NCVSB
 KgLmHRrfS14e7Vpea/mpJ5nTOoSZnnKKktNeuY/oXLAI3iEj+mcFSRPdU
 Upa+jcS8x+ZnhFqOLXVW+WeVecSFzl4EMbQA9GpTxSy8yGtNNx+QIh2fy
 52CDNvw/7s9QP3VvkOTEtOuk9dwzM3dsc63KGB5VO136u6rEtkwRAupNv
 wixkDLA2yXYl+KX/JuP1/Q9R1Vc9xla6iOLd0Km7maJlLC+yD/CyYekoH
 OAX3LXamN7N0+/OsJsGw2O3iZ3tcGTIU1VpgZIrPF7w4mmuY5z+5ubUg1 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10400"; a="282722234"
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400"; d="scan'208";a="282722234"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 01:45:06 -0700
X-IronPort-AV: E=Sophos;i="5.92,252,1650956400"; d="scan'208";a="651047273"
Received: from rongch2-mobl.ccr.corp.intel.com (HELO [10.255.31.6])
 ([10.255.31.6])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 01:44:45 -0700
To: Greg KH <gregkh@linuxfoundation.org>, kernel test robot <lkp@intel.com>
References: <62c683a2.g1VSVt6BrQC6ZzOz%lkp@intel.com>
 <YsaUgfPbOg7WuBuB@kroah.com>
From: "Chen, Rong A" <rong.a.chen@intel.com>
Message-ID: <c86816fd-aaba-01a9-5def-44868f0a46c9@intel.com>
Date: Thu, 7 Jul 2022 16:44:43 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <YsaUgfPbOg7WuBuB@kroah.com>
Content-Language: en-US
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 7/7/2022 4:08 PM, Greg KH wrote: > On Thu, Jul 07, 2022
 at 02:56:34PM +0800, kernel test robot wrote: >> tree/branch:
 https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
 master >> b [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o9N8J-009fWs-Md
X-Mailman-Approved-At: Thu, 07 Jul 2022 11:29:54 +0000
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
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux.dev, coreteam@netfilter.org, linux-media@vger.kernel.org,
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On 7/7/2022 4:08 PM, Greg KH wrote:
> On Thu, Jul 07, 2022 at 02:56:34PM +0800, kernel test robot wrote:
>> tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
>> branch HEAD: 088b9c375534d905a4d337c78db3b3bfbb52c4a0  Add linux-next specific files for 20220706
>>
>> Error/Warning reports:
>>
>> https://lore.kernel.org/linux-doc/202207070644.x48XOOvs-lkp@intel.com
>>
>> Error/Warning: (recently discovered and may have been fixed)
>>
>> Documentation/arm/google/chromebook-boot-flow.rst: WARNING: document isn't included in any toctree
>> arm-linux-gnueabi-ld: dc_dmub_srv.c:(.text+0x1108): undefined reference to `__aeabi_ddiv'
>> arm-linux-gnueabi-ld: dc_dmub_srv.c:(.text+0x1124): undefined reference to `__aeabi_ui2d'
>> arm-linux-gnueabi-ld: dc_dmub_srv.c:(.text+0x1164): undefined reference to `__aeabi_dmul'
>> arm-linux-gnueabi-ld: dc_dmub_srv.c:(.text+0x1170): undefined reference to `__aeabi_dadd'
>> arm-linux-gnueabi-ld: dc_dmub_srv.c:(.text+0x1180): undefined reference to `__aeabi_dsub'
>> arm-linux-gnueabi-ld: dc_dmub_srv.c:(.text+0x1190): undefined reference to `__aeabi_d2uiz'
>> arm-linux-gnueabi-ld: dc_dmub_srv.c:(.text+0x162c): undefined reference to `__aeabi_d2iz'
>> arm-linux-gnueabi-ld: dc_dmub_srv.c:(.text+0x16b0): undefined reference to `__aeabi_i2d'
>> dc_dmub_srv.c:(.text+0x10f8): undefined reference to `__aeabi_ui2d'
>> dc_dmub_srv.c:(.text+0x464): undefined reference to `__floatunsidf'
>> dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x33c): undefined reference to `__floatunsidf'
>> drivers/pci/endpoint/functions/pci-epf-vntb.c:975:5: warning: no previous prototype for 'pci_read' [-Wmissing-prototypes]
>> drivers/pci/endpoint/functions/pci-epf-vntb.c:984:5: warning: no previous prototype for 'pci_write' [-Wmissing-prototypes]
>> drivers/vfio/vfio_iommu_type1.c:2141:35: warning: cast to smaller integer type 'enum iommu_cap' from 'void *' [-Wvoid-pointer-to-enum-cast]
>> mips-linux-ld: dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x34c): undefined reference to `__floatunsidf'
>> mips-linux-ld: dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x378): undefined reference to `__divdf3'
>> mips-linux-ld: dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x38c): undefined reference to `__muldf3'
>> mips-linux-ld: dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x3a0): undefined reference to `__adddf3'
>> mips-linux-ld: dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x3b4): undefined reference to `__subdf3'
>> mips-linux-ld: dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x3d4): undefined reference to `__fixunsdfsi'
>> mips-linux-ld: dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x750): undefined reference to `__fixdfsi'
>> mips-linux-ld: dc_dmub_srv.c:(.text.dc_dmub_setup_subvp_dmub_command+0x7c0): undefined reference to `__floatsidf'
>> powerpc-linux-ld: drivers/pci/endpoint/functions/pci-epf-vntb.c:174: undefined reference to `ntb_link_event'
>> xtensa-linux-ld: dc_dmub_srv.c:(.text+0x468): undefined reference to `__divdf3'
>> xtensa-linux-ld: dc_dmub_srv.c:(.text+0x46c): undefined reference to `__muldf3'
>> xtensa-linux-ld: dc_dmub_srv.c:(.text+0x470): undefined reference to `__adddf3'
>> xtensa-linux-ld: dc_dmub_srv.c:(.text+0x474): undefined reference to `__subdf3'
>> xtensa-linux-ld: dc_dmub_srv.c:(.text+0x478): undefined reference to `__fixunsdfsi'
>> xtensa-linux-ld: dc_dmub_srv.c:(.text+0x47c): undefined reference to `__fixdfsi'
>> xtensa-linux-ld: dc_dmub_srv.c:(.text+0x480): undefined reference to `__floatsidf'
>> xtensa-linux-ld: dc_dmub_srv.c:(.text+0x60c): undefined reference to `__floatunsidf'
>>
>> Unverified Error/Warning (likely false positive, please contact us if interested):
>>
>> arch/x86/events/core.c:2114 init_hw_perf_events() warn: missing error code 'err'
>> drivers/android/binder.c:1481:19-23: ERROR: from is NULL but dereferenced.
>> drivers/android/binder.c:2920:29-33: ERROR: target_thread is NULL but dereferenced.
>> drivers/android/binder.c:353:25-35: ERROR: node -> proc is NULL but dereferenced.
>> drivers/android/binder.c:4888:16-20: ERROR: t is NULL but dereferenced.
>> drivers/base/regmap/regmap.c:1996:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
>> drivers/char/random.c:869:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
>> drivers/firmware/arm_scmi/clock.c:394:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
>> drivers/firmware/arm_scmi/powercap.c:376:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
>> drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_powertune.c:1214:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
>> drivers/gpu/drm/amd/display/dc/os_types.h: drm/drm_print.h is included more than once.
>> drivers/gpu/drm/bridge/ite-it66121.c:1398:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
>> drivers/greybus/operation.c:617:1: internal compiler error: in arc_ifcvt, at config/arc/arc.c:9637
> 
> <snip>
> 
> When the compiler crashes, why are you blaming all of these different
> mailing lists?  Perhaps you need to fix your compiler :)
> 
> thanks,
> 
> greg k-h
> 

Hi Greg,

Sorry for the inconvience, we'll fix it ASAP.

Best Regards,
Rong Chen


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
