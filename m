Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C028A5A12
	for <lists+openipmi-developer@lfdr.de>; Mon, 15 Apr 2024 20:43:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rwRIX-0004SH-MJ;
	Mon, 15 Apr 2024 18:43:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1rwRIU-0004SA-Ct
 for openipmi-developer@lists.sourceforge.net;
 Mon, 15 Apr 2024 18:43:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6HXA92+/G2hLJSpsmbG4JTq27PbjO93Q4Uvb2sh6fyQ=; b=FZw83wuOqqyJIAgEG+gb1OL7T1
 OIFsxB1FXNAm+3NzS8KmAcN/amsrOFq3nuiXkrGjXQ7sxBAWVBR/Or5JZggX8HFIt86KZn/eFEhh8
 O9WVNi9vtbIZlcVaLqMZ8Z5E9N2tj9iXSLa6TEcC2zvVbmTt/lfF6ccvR4Ww1ELwI5F8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6HXA92+/G2hLJSpsmbG4JTq27PbjO93Q4Uvb2sh6fyQ=; b=j2su/n6wYmJwGPrKOPRpBEmglg
 Rk/cN3e5B+PsJN6d4tT177bh8H/XlHSJgkwKtNQUFW/BM76a4JtedVcIXMQUqpPBZOq0Rkr1J7btE
 ZaN7KXe5gXQnKA9Xtgpk98vOEeI1Z2fHKGu9/fr4DZfg/a6JmoDDu/BY3U29mQ7tjcno=;
Received: from mgamail.intel.com ([192.198.163.8])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rwRIR-0008E8-VU for openipmi-developer@lists.sourceforge.net;
 Mon, 15 Apr 2024 18:43:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713206596; x=1744742596;
 h=date:from:to:cc:subject:message-id;
 bh=1B+TfAZrRWUGF5ddSRya1vxEfH/fzLX4EuwG1QQKH4Y=;
 b=McS95Q7bhDRHbK+XwxRPxPjoEqRErfZQILU4WEy/j2/YEQfyfQ99Q4Wv
 eL/89/75421UPyddPvzbc0y7UNlMmJwlfihVbAn5T7u2ykoOXfK9d7rUk
 e8KzJBcWHMTPRf+wH2RoLAh1z8q7Ht1i1cXTIzianemSlFbYgZyLlbNli
 rSC6t3Phk4lmre+S7yus1gAULyNSrs476NJbIP68P+Iq8x1wAuhRccRsf
 kxL3FJsKAIvw5poPcDVGWUsdvP2TmwMs6LO91QP02vJkO6bkFgYEtqZl7
 7KK65z2hD29mWQsQD1iRG2LyYMRS75c/ryaN1QcmGZLo+qfUGycBQjT7X w==;
X-CSE-ConnectionGUID: Na5HI8dXS8GMlSfEKTAAPA==
X-CSE-MsgGUID: vDNx679DQBKu4OL6hVOqLA==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="26124980"
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="26124980"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 11:27:20 -0700
X-CSE-ConnectionGUID: Nca5bet8S1Wtc3rCa3y2Bg==
X-CSE-MsgGUID: Jd9okulqQeG4O/JnGSsYxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="22092518"
Received: from unknown (HELO 23c141fc0fd8) ([10.239.97.151])
 by fmviesa007.fm.intel.com with ESMTP; 15 Apr 2024 11:27:16 -0700
Received: from kbuild by 23c141fc0fd8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rwR2v-0004ZS-0b;
 Mon, 15 Apr 2024 18:27:13 +0000
Date: Tue, 16 Apr 2024 02:26:48 +0800
From: kernel test robot <lkp@intel.com>
To: Andrew Morton <akpm@linux-foundation.org>
Message-ID: <202404160240.Q5gwg2aY-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Spam-Score: -2.4 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: tree/branch:
 https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
 master branch HEAD: 6bd343537461b57f3efe5dfc5fc193a232dfef1e Add linux-next
 specific files for 20240415 Error/Warning reports: 
 Content analysis details:   (-2.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rwRIR-0008E8-VU
Subject: [Openipmi-developer] [linux-next:master] BUILD REGRESSION
 6bd343537461b57f3efe5dfc5fc193a232dfef1e
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
Cc: linux-arch@vger.kernel.org, imx@lists.linux.dev, lima@lists.freedesktop.org,
 linux-pwm@vger.kernel.org, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-renesas-soc@vger.kernel.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 amd-gfx@lists.freedesktop.org, dmaengine@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, intel-xe@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
branch HEAD: 6bd343537461b57f3efe5dfc5fc193a232dfef1e  Add linux-next specific files for 20240415

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202404151720.HA4KzY01-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202404160020.38y5RIbw-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

WARNING: modpost: vmlinux: section mismatch in reference: ___se_sys_chroot+0xd0 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: ___se_sys_inotify_add_watch+0x12a (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: ___se_sys_landlock_add_rule+0x1b0 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: ___se_sys_open_by_handle_at+0x1ea (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: __dev_queue_xmit+0x1d4 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: __do_sys_fsmount+0xf2 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: __do_sys_pivot_root+0x28a (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: __hw_addr_del_entry+0x44 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: __hw_addr_flush+0x48 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: __u64_stats_update_begin+0x16 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: ahci_platform_get_resources+0x84 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: altera_msi_probe+0x80 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: armada8k_pcie_probe+0x144 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: atmel_sha_probe+0x36a (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: btrfs_init_new_device+0x14e (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: cqhci_pltfm_init+0x1a (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: default_device_exit_net+0x128 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: do_coredump+0x454 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: do_utimes+0xea (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: dpm_suspend+0xa2 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: dpm_suspend_late+0x86 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: dpm_suspend_noirq+0xa2 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: edma_probe+0xf2 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: free_filters_list+0x3c (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: img_hash_probe+0x3a0 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: ipv6_icmp_error+0x20 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: kernel_read_file_from_path_initns+0xe6 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: kmb_ocs_aes_probe+0x1c2 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: kmb_ocs_ecc_probe+0x172 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: ks_pcie_probe+0xb0 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: lpc18xx_eeprom_probe+0x3e (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mntns_install+0xd4 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mobiveil_pcie_host_probe+0x36 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mptcp_pm_nl_get_addr+0x112 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mtk_iommu_probe+0x30c (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: mv_xor_probe+0x272 (section: .text.unlikely) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: omap8250_probe+0xec (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: sbi_cpuidle_probe+0x346 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: skcipher_walk_complete+0x46 (section: .text) -> .L0  (section: .init.text)
WARNING: modpost: vmlinux: section mismatch in reference: tcp_retrans_try_collapse+0x1a8 (section: .text) -> .L0  (section: .init.text)
arm-linux-gnueabi-ld: drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/dcn20_fpu.c:1666:(.text+0x29a8): undefined reference to `__aeabi_l2d'
arm-linux-gnueabi-ld: drivers/gpu/drm/amd/amdgpu/../display/dc/dml2/dml2_translation_helper.c:914:(.text+0xc90): undefined reference to `__aeabi_l2d'
drivers/gpu/drm/amd/amdgpu/../display/dc/dml/calcs/dcn_calcs.c:399:(.text+0x84c): undefined reference to `__aeabi_l2d'
drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn20/dcn20_fpu.c:1665:(.text+0x2980): undefined reference to `__aeabi_l2d'
drivers/gpu/drm/amd/amdgpu/../display/dc/dml2/dml2_translation_helper.c:913:(.text+0xc54): undefined reference to `__aeabi_l2d'
drivers/gpu/drm/amd/amdgpu/../display/dc/dml2/dml2_wrapper.c:139:(.text+0xdd4): undefined reference to `__aeabi_d2ulz'
dw_hdmi-rockchip.c:(.rodata+0x8e0): undefined reference to `dw_hdmi_phy_update_hpd'
dw_hdmi-rockchip.c:(.text+0x20c): undefined reference to `dw_hdmi_phy_setup_hpd'
dw_hdmi-rockchip.c:(.text+0x2e4): undefined reference to `dw_hdmi_phy_read_hpd'
dw_hdmi-rockchip.c:(.text+0x410): undefined reference to `dw_hdmi_unbind'
dw_hdmi-rockchip.c:(.text+0x8c0): undefined reference to `dw_hdmi_bind'
dw_hdmi-rockchip.c:(.text+0x98): undefined reference to `dw_hdmi_resume'
loongarch64-linux-ld: dw_hdmi-rockchip.c:(.rodata+0xa10): undefined reference to `dw_hdmi_phy_read_hpd'
loongarch64-linux-ld: dw_hdmi-rockchip.c:(.rodata+0xa18): undefined reference to `dw_hdmi_phy_update_hpd'
powerpc-linux-ld: warning: orphan section `.bss..Lubsan_data530' from `drivers/cxl/core/port.o' being placed in section `.bss..Lubsan_data530'

Unverified Error/Warning (likely false positive, please contact us if interested):

drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c:2074 cdns_mhdp_atomic_enable() warn: inconsistent returns '&mhdp->link_mutex'.

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allyesconfig
|   |-- drivers-gpu-drm-imx-ipuv3-imx-ldb.c:error:_sel-directive-output-may-be-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- drivers-gpu-drm-nouveau-nouveau_backlight.c:error:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|-- arm-allmodconfig
|   |-- drivers-gpu-drm-imx-ipuv3-imx-ldb.c:error:_sel-directive-output-may-be-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- drivers-gpu-drm-nouveau-nouveau_backlight.c:error:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|-- arm-allyesconfig
|   |-- drivers-gpu-drm-imx-ipuv3-imx-ldb.c:error:_sel-directive-output-may-be-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- drivers-gpu-drm-nouveau-nouveau_backlight.c:error:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|-- arm-randconfig-r023-20230723
|   |-- arm-linux-gnueabi-ld:drivers-gpu-drm-amd-amdgpu-..-display-dc-dml-dcn20-dcn20_fpu.c:(.text):undefined-reference-to-__aeabi_l2d
|   |-- arm-linux-gnueabi-ld:drivers-gpu-drm-amd-amdgpu-..-display-dc-dml2-dml2_translation_helper.c:(.text):undefined-reference-to-__aeabi_l2d
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-dml-calcs-dcn_calcs.c:(.text):undefined-reference-to-__aeabi_l2d
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-dml-dcn20-dcn20_fpu.c:(.text):undefined-reference-to-__aeabi_l2d
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-dml2-dml2_translation_helper.c:(.text):undefined-reference-to-__aeabi_l2d
|   `-- drivers-gpu-drm-amd-amdgpu-..-display-dc-dml2-dml2_wrapper.c:(.text):undefined-reference-to-__aeabi_d2ulz
|-- csky-allmodconfig
|   |-- drivers-gpu-drm-imx-ipuv3-imx-ldb.c:error:_sel-directive-output-may-be-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- drivers-gpu-drm-nouveau-nouveau_backlight.c:error:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|-- csky-allyesconfig
|   |-- drivers-gpu-drm-imx-ipuv3-imx-ldb.c:error:_sel-directive-output-may-be-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- drivers-gpu-drm-nouveau-nouveau_backlight.c:error:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|-- loongarch-allmodconfig
|   |-- drivers-gpu-drm-imx-ipuv3-imx-ldb.c:error:_sel-directive-output-may-be-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- drivers-gpu-drm-nouveau-nouveau_backlight.c:error:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|-- loongarch-allyesconfig
|   |-- drivers-gpu-drm-imx-ipuv3-imx-ldb.c:error:_sel-directive-output-may-be-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- drivers-gpu-drm-nouveau-nouveau_backlight.c:error:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|-- loongarch-randconfig-r131-20240415
|   |-- dw_hdmi-rockchip.c:(.rodata):undefined-reference-to-dw_hdmi_phy_update_hpd
|   |-- dw_hdmi-rockchip.c:(.text):undefined-reference-to-dw_hdmi_bind
|   |-- dw_hdmi-rockchip.c:(.text):undefined-reference-to-dw_hdmi_phy_read_hpd
|   |-- dw_hdmi-rockchip.c:(.text):undefined-reference-to-dw_hdmi_phy_setup_hpd
|   |-- dw_hdmi-rockchip.c:(.text):undefined-reference-to-dw_hdmi_resume
|   |-- dw_hdmi-rockchip.c:(.text):undefined-reference-to-dw_hdmi_unbind
|   |-- loongarch64-linux-ld:dw_hdmi-rockchip.c:(.rodata):undefined-reference-to-dw_hdmi_phy_read_hpd
|   `-- loongarch64-linux-ld:dw_hdmi-rockchip.c:(.rodata):undefined-reference-to-dw_hdmi_phy_update_hpd
|-- microblaze-allmodconfig
|   |-- drivers-gpu-drm-imx-ipuv3-imx-ldb.c:error:_sel-directive-output-may-be-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- drivers-gpu-drm-nouveau-nouveau_backlight.c:error:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|-- microblaze-allyesconfig
|   |-- drivers-gpu-drm-imx-ipuv3-imx-ldb.c:error:_sel-directive-output-may-be-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- drivers-gpu-drm-nouveau-nouveau_backlight.c:error:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|-- openrisc-allyesconfig
|   |-- drivers-gpu-drm-imx-ipuv3-imx-ldb.c:error:_sel-directive-output-may-be-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- drivers-gpu-drm-nouveau-nouveau_backlight.c:error:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|-- parisc-allmodconfig
|   |-- drivers-gpu-drm-imx-ipuv3-imx-ldb.c:error:_sel-directive-output-may-be-truncated-writing-bytes-into-a-region-of-size-between-and
|   |-- drivers-gpu-drm-nouveau-nouveau_backlight.c:error:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|   `-- drivers-gpu-drm-nouveau-nvif-object.c:error:memcpy-accessing-or-more-bytes-at-offsets-and-overlaps-bytes-at-offset
|-- parisc-allyesconfig
|   |-- drivers-gpu-drm-imx-ipuv3-imx-ldb.c:error:_sel-directive-output-may-be-truncated-writing-bytes-into-a-region-of-size-between-and
|   |-- drivers-gpu-drm-nouveau-nouveau_backlight.c:error:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|   `-- drivers-gpu-drm-nouveau-nvif-object.c:error:memcpy-accessing-or-more-bytes-at-offsets-and-overlaps-bytes-at-offset
|-- powerpc-allmodconfig
|   |-- drivers-gpu-drm-imx-ipuv3-imx-ldb.c:error:_sel-directive-output-may-be-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- drivers-gpu-drm-nouveau-nouveau_backlight.c:error:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|-- powerpc-randconfig-r033-20230101
|   `-- powerpc-linux-ld:warning:orphan-section-bss..Lubsan_data530-from-drivers-cxl-core-port.o-being-placed-in-section-.bss..Lubsan_data530
|-- riscv-buildonly-randconfig-r005-20221114
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:___se_sys_chroot-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:___se_sys_inotify_add_watch-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:___se_sys_landlock_add_rule-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:___se_sys_open_by_handle_at-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:__dev_queue_xmit-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:__do_sys_fsmount-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:__do_sys_pivot_root-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:__hw_addr_del_entry-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:__hw_addr_flush-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:__u64_stats_update_begin-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:ahci_platform_get_resources-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:altera_msi_probe-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:armada8k_pcie_probe-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:atmel_sha_probe-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:btrfs_init_new_device-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:cqhci_pltfm_init-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:default_device_exit_net-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:do_coredump-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:do_utimes-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:dpm_suspend-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:dpm_suspend_late-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:dpm_suspend_noirq-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:edma_probe-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:free_filters_list-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:img_hash_probe-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:ipv6_icmp_error-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:kernel_read_file_from_path_initns-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:kmb_ocs_aes_probe-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:kmb_ocs_ecc_probe-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:ks_pcie_probe-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:lpc18xx_eeprom_probe-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:mntns_install-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:mobiveil_pcie_host_probe-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:mptcp_pm_nl_get_addr-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:mtk_iommu_probe-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:mv_xor_probe-(section:.text.unlikely)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:omap8250_probe-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:sbi_cpuidle_probe-(section:.text)-.L0-(section:.init.text)
|   |-- WARNING:modpost:vmlinux:section-mismatch-in-reference:skcipher_walk_complete-(section:.text)-.L0-(section:.init.text)
|   `-- WARNING:modpost:vmlinux:section-mismatch-in-reference:tcp_retrans_try_collapse-(section:.text)-.L0-(section:.init.text)
|-- s390-allyesconfig
|   |-- drivers-gpu-drm-imx-ipuv3-imx-ldb.c:error:_sel-directive-output-may-be-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- drivers-gpu-drm-nouveau-nouveau_backlight.c:error:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|-- sparc-allmodconfig
|   |-- drivers-gpu-drm-imx-ipuv3-imx-ldb.c:error:_sel-directive-output-may-be-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- drivers-gpu-drm-nouveau-nouveau_backlight.c:error:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
|-- sparc64-allmodconfig
|   |-- drivers-gpu-drm-imx-ipuv3-imx-ldb.c:error:_sel-directive-output-may-be-truncated-writing-bytes-into-a-region-of-size-between-and
|   `-- drivers-gpu-drm-nouveau-nouveau_backlight.c:error:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
`-- sparc64-allyesconfig
    |-- drivers-gpu-drm-imx-ipuv3-imx-ldb.c:error:_sel-directive-output-may-be-truncated-writing-bytes-into-a-region-of-size-between-and
    `-- drivers-gpu-drm-nouveau-nouveau_backlight.c:error:d-directive-output-may-be-truncated-writing-between-and-bytes-into-a-region-of-size
clang_recent_errors
|-- arm64-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:error:arithmetic-between-different-enumeration-types-(-enum-dc_irq_source-and-enum-irq_type-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-irq-dce110-irq_service_dce110.c:error:arithmetic-between-different-enumeration-types-(-enum-dc_irq_source-and-enum-irq_type-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_drv.c:error:bitwise-operation-between-different-enumeration-types-(-enum-amd_asic_type-and-enum-amd_chip_flags-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_ras.c:error:arithmetic-between-different-enumeration-types-(-enum-amdgpu_ras_block-and-enum-amdgpu_ras_mca_block-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-drm_mm.c:error:unused-function-drm_mm_interval_tree_insert-Werror-Wunused-function
|   |-- drivers-gpu-drm-drm_mm.c:error:unused-function-drm_mm_interval_tree_iter_next-Werror-Wunused-function
|   |-- drivers-gpu-drm-i915-display-intel_cursor.c:error:arithmetic-between-different-enumeration-types-(-enum-pipe-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_ddi.c:error:arithmetic-between-different-enumeration-types-(-enum-hpd_pin-and-enum-port-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_ddi.c:error:arithmetic-between-different-enumeration-types-(-enum-transcoder-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_display.c:error:arithmetic-between-different-enumeration-types-(-enum-phy-and-enum-port-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_display.c:error:arithmetic-between-different-enumeration-types-(-enum-pipe-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_display.c:error:arithmetic-between-different-enumeration-types-(-enum-tc_port-and-enum-port-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_display.c:error:arithmetic-between-different-enumeration-types-(-enum-transcoder-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_display_irq.c:error:arithmetic-between-different-enumeration-types-(-enum-pipe-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_display_irq.c:error:arithmetic-between-different-enumeration-types-(-enum-transcoder-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_dpll_mgr.c:error:arithmetic-between-different-enumeration-types-(-enum-tc_port-and-enum-intel_dpll_id-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_hotplug.c:error:arithmetic-between-different-enumeration-types-(-enum-hpd_pin-and-enum-port-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_pipe_crc.c:error:arithmetic-between-different-enumeration-types-(-enum-pipe-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_tc.c:error:arithmetic-between-different-enumeration-types-(-enum-intel_display_power_domain-and-enum-tc_port-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_vdsc.c:error:arithmetic-between-different-enumeration-types-(-enum-pipe-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-skl_universal_plane.c:error:arithmetic-between-different-enumeration-types-(-enum-pipe-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-skl_watermark.c:error:arithmetic-between-different-enumeration-types-(-enum-pipe-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-lima-lima_drv.c:error:cast-to-smaller-integer-type-enum-lima_gpu_id-from-const-void-Werror-Wvoid-pointer-to-enum-cast
|   |-- drivers-gpu-drm-pl111-pl111_versatile.c:error:cast-to-smaller-integer-type-enum-versatile_clcd-from-const-void-Werror-Wvoid-pointer-to-enum-cast
|   |-- drivers-gpu-drm-radeon-radeon_drv.c:error:bitwise-operation-between-different-enumeration-types-(-enum-radeon_family-and-enum-radeon_chip_flags-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-renesas-rcar-du-rcar_cmm.c:error:unused-function-rcar_cmm_read-Werror-Wunused-function
|   |-- include-linux-vmstat.h:error:arithmetic-between-different-enumeration-types-(-enum-node_stat_item-and-enum-lru_list-)-Werror-Wenum-enum-conversion
|   `-- include-linux-vmstat.h:error:arithmetic-between-different-enumeration-types-(-enum-zone_stat_item-and-enum-numa_stat_item-)-Werror-Wenum-enum-conversion
|-- hexagon-allmodconfig
|   |-- drivers-gpu-drm-drm_mm.c:error:unused-function-drm_mm_interval_tree_insert-Werror-Wunused-function
|   |-- drivers-gpu-drm-drm_mm.c:error:unused-function-drm_mm_interval_tree_iter_next-Werror-Wunused-function
|   |-- include-asm-generic-io.h:error:performing-pointer-arithmetic-on-a-null-pointer-has-undefined-behavior-Werror-Wnull-pointer-arithmetic
|   `-- include-linux-vmstat.h:error:arithmetic-between-different-enumeration-types-(-enum-node_stat_item-and-enum-lru_list-)-Werror-Wenum-enum-conversion
|-- hexagon-allyesconfig
|   |-- drivers-gpu-drm-drm_mm.c:error:unused-function-drm_mm_interval_tree_insert-Werror-Wunused-function
|   |-- drivers-gpu-drm-drm_mm.c:error:unused-function-drm_mm_interval_tree_iter_next-Werror-Wunused-function
|   |-- include-asm-generic-io.h:error:performing-pointer-arithmetic-on-a-null-pointer-has-undefined-behavior-Werror-Wnull-pointer-arithmetic
|   `-- include-linux-vmstat.h:error:arithmetic-between-different-enumeration-types-(-enum-node_stat_item-and-enum-lru_list-)-Werror-Wenum-enum-conversion
|-- i386-randconfig-141-20240415
|   |-- drivers-dma-fsl-edma-main.c-fsl_edma_xlate()-warn:inconsistent-returns-fsl_edma-fsl_edma_mutex-.
|   |-- drivers-gpu-drm-bridge-cadence-cdns-mhdp8546-core.c-cdns_mhdp_atomic_enable()-warn:inconsistent-returns-mhdp-link_mutex-.
|   |-- drivers-pwm-core.c-pwm_cdev_ioctl()-warn:possible-spectre-second-half.-pwm
|   `-- drivers-pwm-core.c-pwm_cdev_ioctl()-warn:potential-spectre-issue-cdata-pwm-r
|-- powerpc-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_drv.c:error:bitwise-operation-between-different-enumeration-types-(-enum-amd_asic_type-and-enum-amd_chip_flags-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_ras.c:error:arithmetic-between-different-enumeration-types-(-enum-amdgpu_ras_block-and-enum-amdgpu_ras_mca_block-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-drm_mm.c:error:unused-function-drm_mm_interval_tree_insert-Werror-Wunused-function
|   |-- drivers-gpu-drm-drm_mm.c:error:unused-function-drm_mm_interval_tree_iter_next-Werror-Wunused-function
|   |-- drivers-gpu-drm-lima-lima_drv.c:error:cast-to-smaller-integer-type-enum-lima_gpu_id-from-const-void-Werror-Wvoid-pointer-to-enum-cast
|   |-- drivers-gpu-drm-pl111-pl111_versatile.c:error:cast-to-smaller-integer-type-enum-versatile_clcd-from-const-void-Werror-Wvoid-pointer-to-enum-cast
|   |-- drivers-gpu-drm-radeon-radeon_drv.c:error:bitwise-operation-between-different-enumeration-types-(-enum-radeon_family-and-enum-radeon_chip_flags-)-Werror-Wenum-enum-conversion
|   |-- include-linux-vmstat.h:error:arithmetic-between-different-enumeration-types-(-enum-node_stat_item-and-enum-lru_list-)-Werror-Wenum-enum-conversion
|   `-- include-linux-vmstat.h:error:arithmetic-between-different-enumeration-types-(-enum-zone_stat_item-and-enum-numa_stat_item-)-Werror-Wenum-enum-conversion
|-- riscv-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:error:arithmetic-between-different-enumeration-types-(-enum-dc_irq_source-and-enum-irq_type-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-irq-dce110-irq_service_dce110.c:error:arithmetic-between-different-enumeration-types-(-enum-dc_irq_source-and-enum-irq_type-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_drv.c:error:bitwise-operation-between-different-enumeration-types-(-enum-amd_asic_type-and-enum-amd_chip_flags-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_ras.c:error:arithmetic-between-different-enumeration-types-(-enum-amdgpu_ras_block-and-enum-amdgpu_ras_mca_block-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-drm_mm.c:error:unused-function-drm_mm_interval_tree_insert-Werror-Wunused-function
|   |-- drivers-gpu-drm-drm_mm.c:error:unused-function-drm_mm_interval_tree_iter_next-Werror-Wunused-function
|   |-- drivers-gpu-drm-i915-display-intel_cursor.c:error:arithmetic-between-different-enumeration-types-(-enum-pipe-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_ddi.c:error:arithmetic-between-different-enumeration-types-(-enum-hpd_pin-and-enum-port-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_ddi.c:error:arithmetic-between-different-enumeration-types-(-enum-transcoder-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_display.c:error:arithmetic-between-different-enumeration-types-(-enum-phy-and-enum-port-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_display.c:error:arithmetic-between-different-enumeration-types-(-enum-pipe-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_display.c:error:arithmetic-between-different-enumeration-types-(-enum-tc_port-and-enum-port-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_display.c:error:arithmetic-between-different-enumeration-types-(-enum-transcoder-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_display_irq.c:error:arithmetic-between-different-enumeration-types-(-enum-pipe-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_display_irq.c:error:arithmetic-between-different-enumeration-types-(-enum-transcoder-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_dpll_mgr.c:error:arithmetic-between-different-enumeration-types-(-enum-tc_port-and-enum-intel_dpll_id-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_hotplug.c:error:arithmetic-between-different-enumeration-types-(-enum-hpd_pin-and-enum-port-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_pipe_crc.c:error:arithmetic-between-different-enumeration-types-(-enum-pipe-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_tc.c:error:arithmetic-between-different-enumeration-types-(-enum-intel_display_power_domain-and-enum-tc_port-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_vdsc.c:error:arithmetic-between-different-enumeration-types-(-enum-pipe-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-skl_universal_plane.c:error:arithmetic-between-different-enumeration-types-(-enum-pipe-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-skl_watermark.c:error:arithmetic-between-different-enumeration-types-(-enum-pipe-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-lima-lima_drv.c:error:cast-to-smaller-integer-type-enum-lima_gpu_id-from-const-void-Werror-Wvoid-pointer-to-enum-cast
|   |-- drivers-gpu-drm-pl111-pl111_versatile.c:error:cast-to-smaller-integer-type-enum-versatile_clcd-from-const-void-Werror-Wvoid-pointer-to-enum-cast
|   |-- drivers-gpu-drm-radeon-radeon_drv.c:error:bitwise-operation-between-different-enumeration-types-(-enum-radeon_family-and-enum-radeon_chip_flags-)-Werror-Wenum-enum-conversion
|   |-- include-linux-vmstat.h:error:arithmetic-between-different-enumeration-types-(-enum-node_stat_item-and-enum-lru_list-)-Werror-Wenum-enum-conversion
|   `-- include-linux-vmstat.h:error:arithmetic-between-different-enumeration-types-(-enum-zone_stat_item-and-enum-numa_stat_item-)-Werror-Wenum-enum-conversion
|-- riscv-allyesconfig
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-amdgpu_dm-amdgpu_dm.c:error:arithmetic-between-different-enumeration-types-(-enum-dc_irq_source-and-enum-irq_type-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-amd-amdgpu-..-display-dc-irq-dce110-irq_service_dce110.c:error:arithmetic-between-different-enumeration-types-(-enum-dc_irq_source-and-enum-irq_type-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_drv.c:error:bitwise-operation-between-different-enumeration-types-(-enum-amd_asic_type-and-enum-amd_chip_flags-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_ras.c:error:arithmetic-between-different-enumeration-types-(-enum-amdgpu_ras_block-and-enum-amdgpu_ras_mca_block-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-drm_mm.c:error:unused-function-drm_mm_interval_tree_insert-Werror-Wunused-function
|   |-- drivers-gpu-drm-drm_mm.c:error:unused-function-drm_mm_interval_tree_iter_next-Werror-Wunused-function
|   |-- drivers-gpu-drm-lima-lima_drv.c:error:cast-to-smaller-integer-type-enum-lima_gpu_id-from-const-void-Werror-Wvoid-pointer-to-enum-cast
|   |-- drivers-gpu-drm-pl111-pl111_versatile.c:error:cast-to-smaller-integer-type-enum-versatile_clcd-from-const-void-Werror-Wvoid-pointer-to-enum-cast
|   |-- drivers-gpu-drm-radeon-radeon_drv.c:error:bitwise-operation-between-different-enumeration-types-(-enum-radeon_family-and-enum-radeon_chip_flags-)-Werror-Wenum-enum-conversion
|   |-- include-linux-vmstat.h:error:arithmetic-between-different-enumeration-types-(-enum-node_stat_item-and-enum-lru_list-)-Werror-Wenum-enum-conversion
|   `-- include-linux-vmstat.h:error:arithmetic-between-different-enumeration-types-(-enum-zone_stat_item-and-enum-numa_stat_item-)-Werror-Wenum-enum-conversion
|-- s390-allmodconfig
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_drv.c:error:bitwise-operation-between-different-enumeration-types-(-enum-amd_asic_type-and-enum-amd_chip_flags-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-amd-amdgpu-amdgpu_ras.c:error:arithmetic-between-different-enumeration-types-(-enum-amdgpu_ras_block-and-enum-amdgpu_ras_mca_block-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_cursor.c:error:arithmetic-between-different-enumeration-types-(-enum-pipe-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_ddi.c:error:arithmetic-between-different-enumeration-types-(-enum-transcoder-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_display.c:error:arithmetic-between-different-enumeration-types-(-enum-phy-and-enum-port-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_display.c:error:arithmetic-between-different-enumeration-types-(-enum-transcoder-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_display_irq.c:error:arithmetic-between-different-enumeration-types-(-enum-pipe-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_display_irq.c:error:arithmetic-between-different-enumeration-types-(-enum-transcoder-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_dpll_mgr.c:error:arithmetic-between-different-enumeration-types-(-enum-tc_port-and-enum-intel_dpll_id-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_hotplug.c:error:arithmetic-between-different-enumeration-types-(-enum-hpd_pin-and-enum-port-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_pipe_crc.c:error:arithmetic-between-different-enumeration-types-(-enum-pipe-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_tc.c:error:arithmetic-between-different-enumeration-types-(-enum-intel_display_power_domain-and-enum-tc_port-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-intel_vdsc.c:error:arithmetic-between-different-enumeration-types-(-enum-pipe-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-skl_universal_plane.c:error:arithmetic-between-different-enumeration-types-(-enum-pipe-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-i915-display-skl_watermark.c:error:arithmetic-between-different-enumeration-types-(-enum-pipe-and-enum-intel_display_power_domain-)-Werror-Wenum-enum-conversion
|   |-- drivers-gpu-drm-lima-lima_drv.c:error:cast-to-smaller-integer-type-enum-lima_gpu_id-from-const-void-Werror-Wvoid-pointer-to-enum-cast
|   |-- drivers-gpu-drm-pl111-pl111_versatile.c:error:cast-to-smaller-integer-type-enum-versatile_clcd-from-const-void-Werror-Wvoid-pointer-to-enum-cast
|   |-- drivers-gpu-drm-radeon-radeon_drv.c:error:bitwise-operation-between-different-enumeration-types-(-enum-radeon_family-and-enum-radeon_chip_flags-)-Werror-Wenum-enum-conversion
|   |-- include-asm-generic-io.h:error:performing-pointer-arithmetic-on-a-null-pointer-has-undefined-behavior-Werror-Wnull-pointer-arithmetic
|   |-- include-linux-vmstat.h:error:arithmetic-between-different-enumeration-types-(-enum-node_stat_item-and-enum-lru_list-)-Werror-Wenum-enum-conversion
|   `-- include-linux-vmstat.h:error:arithmetic-between-different-enumeration-types-(-enum-zone_stat_item-and-enum-numa_stat_item-)-Werror-Wenum-enum-conversion
|-- x86_64-allnoconfig
|   |-- Warning:MAINTAINERS-references-a-file-that-doesn-t-exist:Documentation-devicetree-bindings-display-exynos
|   |-- Warning:MAINTAINERS-references-a-file-that-doesn-t-exist:Documentation-devicetree-bindings-reserved-memory-qcom
|   `-- drivers-char-ipmi-ipmi_msghandler.c:linux-workqueue.h-is-included-more-than-once.
`-- x86_64-allyesconfig
    |-- drivers-gpu-drm-bridge-synopsys-dw-hdmi-i2s-audio.c:error:unused-function-hdmi_read-Werror-Wunused-function
    |-- drivers-gpu-drm-drm_mm.c:error:unused-function-drm_mm_interval_tree_insert-Werror-Wunused-function
    |-- drivers-gpu-drm-drm_mm.c:error:unused-function-drm_mm_interval_tree_iter_next-Werror-Wunused-function
    |-- drivers-gpu-drm-kmb-kmb_dsi.c:error:unused-function-set_test_mode_src_osc_freq_target_hi_bits-Werror-Wunused-function
    |-- drivers-gpu-drm-kmb-kmb_dsi.c:error:unused-function-set_test_mode_src_osc_freq_target_low_bits-Werror-Wunused-function
    |-- drivers-gpu-drm-lima-lima_drv.c:error:cast-to-smaller-integer-type-enum-lima_gpu_id-from-const-void-Werror-Wvoid-pointer-to-enum-cast
    `-- drivers-gpu-drm-pl111-pl111_versatile.c:error:cast-to-smaller-integer-type-enum-versatile_clcd-from-const-void-Werror-Wvoid-pointer-to-enum-cast

elapsed time: 731m

configs tested: 180
configs skipped: 3

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                          axs101_defconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20240415   gcc  
arc                   randconfig-002-20240415   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   clang
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                         lpc32xx_defconfig   clang
arm                          moxart_defconfig   gcc  
arm                          pxa168_defconfig   clang
arm                   randconfig-001-20240415   gcc  
arm                   randconfig-002-20240415   gcc  
arm                   randconfig-003-20240415   clang
arm                   randconfig-004-20240415   gcc  
arm                           stm32_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20240415   clang
arm64                 randconfig-002-20240415   clang
arm64                 randconfig-003-20240415   clang
arm64                 randconfig-004-20240415   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20240415   gcc  
csky                  randconfig-002-20240415   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20240415   clang
hexagon               randconfig-002-20240415   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20240415   clang
i386         buildonly-randconfig-002-20240415   gcc  
i386         buildonly-randconfig-003-20240415   gcc  
i386         buildonly-randconfig-004-20240415   gcc  
i386         buildonly-randconfig-005-20240415   gcc  
i386         buildonly-randconfig-006-20240415   clang
i386                                defconfig   clang
i386                  randconfig-001-20240415   gcc  
i386                  randconfig-002-20240415   clang
i386                  randconfig-003-20240415   gcc  
i386                  randconfig-004-20240415   gcc  
i386                  randconfig-005-20240415   gcc  
i386                  randconfig-006-20240415   clang
i386                  randconfig-011-20240415   gcc  
i386                  randconfig-012-20240415   clang
i386                  randconfig-013-20240415   gcc  
i386                  randconfig-014-20240415   gcc  
i386                  randconfig-015-20240415   gcc  
i386                  randconfig-016-20240415   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20240415   gcc  
loongarch             randconfig-002-20240415   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                          amiga_defconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                     decstation_defconfig   gcc  
mips                           ip32_defconfig   clang
mips                      maltaaprp_defconfig   clang
nios2                         3c120_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20240415   gcc  
nios2                 randconfig-002-20240415   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           alldefconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20240415   gcc  
parisc                randconfig-002-20240415   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                  mpc866_ads_defconfig   clang
powerpc               randconfig-001-20240415   gcc  
powerpc               randconfig-002-20240415   gcc  
powerpc               randconfig-003-20240415   clang
powerpc64             randconfig-001-20240415   clang
powerpc64             randconfig-002-20240415   clang
powerpc64             randconfig-003-20240415   clang
riscv                            allmodconfig   clang
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   clang
riscv                               defconfig   clang
riscv                    nommu_k210_defconfig   clang
riscv                 randconfig-001-20240415   clang
riscv                 randconfig-002-20240415   clang
s390                             allmodconfig   clang
s390                              allnoconfig   clang
s390                             allyesconfig   gcc  
s390                                defconfig   clang
s390                  randconfig-001-20240415   gcc  
s390                  randconfig-002-20240415   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                ecovec24-romimage_defconfig   gcc  
sh                    randconfig-001-20240415   gcc  
sh                    randconfig-002-20240415   gcc  
sh                      rts7751r2d1_defconfig   gcc  
sh                          sdk7786_defconfig   gcc  
sh                           se7206_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20240415   gcc  
sparc64               randconfig-002-20240415   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                    randconfig-001-20240415   clang
um                    randconfig-002-20240415   gcc  
um                           x86_64_defconfig   clang
x86_64                            allnoconfig   clang
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20240415   clang
x86_64       buildonly-randconfig-002-20240415   clang
x86_64       buildonly-randconfig-003-20240415   clang
x86_64       buildonly-randconfig-004-20240415   clang
x86_64       buildonly-randconfig-005-20240415   gcc  
x86_64       buildonly-randconfig-006-20240415   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20240415   gcc  
x86_64                randconfig-002-20240415   gcc  
x86_64                randconfig-003-20240415   clang
x86_64                randconfig-004-20240415   gcc  
x86_64                randconfig-005-20240415   clang
x86_64                randconfig-006-20240415   clang
x86_64                randconfig-011-20240415   clang
x86_64                randconfig-012-20240415   clang
x86_64                randconfig-013-20240415   gcc  
x86_64                randconfig-014-20240415   clang
x86_64                randconfig-015-20240415   clang
x86_64                randconfig-016-20240415   clang
x86_64                randconfig-071-20240415   gcc  
x86_64                randconfig-072-20240415   clang
x86_64                randconfig-073-20240415   clang
x86_64                randconfig-074-20240415   clang
x86_64                randconfig-075-20240415   clang
x86_64                randconfig-076-20240415   clang
x86_64                          rhel-8.3-rust   clang
xtensa                            allnoconfig   gcc  
xtensa                randconfig-001-20240415   gcc  
xtensa                randconfig-002-20240415   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
