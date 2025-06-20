Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B3FAE1D3C
	for <lists+openipmi-developer@lfdr.de>; Fri, 20 Jun 2025 16:25:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sh+KF/N1rLFvfOk22VYUVNYnL8l11iS4WtR51B/iMvc=; b=Y6nMm/OuxRTD4I9DnaA6nCaxAi
	rfHVQ77EMF+A2eG1sDVexwifWC7kP/6CjdrbaVzBYosxSqhc/3o9X66hKst0Zc17szPdabzWH7Ev7
	5ofBxh2OXZp0JUSiumixqdThd9upRxMvhbc+G/te1OOMH5xD1TOiHVAeXB6KChNRy9hA=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uScgD-000864-TM;
	Fri, 20 Jun 2025 14:25:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1uScg6-00085p-Jz
 for openipmi-developer@lists.sourceforge.net;
 Fri, 20 Jun 2025 14:25:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8aH+2cNmUyOyiYQl2KGLmPGobUxyHcHxzMcE4912J3o=; b=Bzqlgoa2NhtVKZaOgwxcXOk/YD
 IMwD1r6QhUWFVCL23HjillRad9EamGx1AatXZnurSpzxxbHR/xoBs3mm++mM0fAmimMipgRjQzuB2
 hjKcV3g4uo+681jxZ7B4TbUQBPyUcmPdIQ9F5Vyb6vcPcGqKSfMvOVpn3hFH2hHhCcN8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8aH+2cNmUyOyiYQl2KGLmPGobUxyHcHxzMcE4912J3o=; b=Ijcef7XAVej2QFo47zsf34veLH
 TOx7T0J2lsIxIl1ki+MemwbsHWF7LCgczTNtgNp6TIvYET6GrnXxOHFcEA6Um3ghLOgc7sbGfLTpD
 1r7mIB2EI6GF4qXk0cJ0vnLAAOxoQXUQ086sNJAs0r+T2p2pqaL6tBSMZrYDkl6xu2YE=;
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uScg1-0000d1-8a for openipmi-developer@lists.sourceforge.net;
 Fri, 20 Jun 2025 14:25:10 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 46e09a7af769-72c16e658f4so1112169a34.1
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 20 Jun 2025 07:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1750429498; x=1751034298;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8aH+2cNmUyOyiYQl2KGLmPGobUxyHcHxzMcE4912J3o=;
 b=dQnWr/v54iyCvISayHO/dq4+SP12auACyRstHb8XedZDXZgjjZ+zH2rUAMRtuP04yZ
 3NdgV3tqZ4u4qmKhK0EitX0+XajLOqYlf4t8BsSkNqsw6qo6TBX+E+Xsq43DlgczLBR5
 mAxK58+nB9SyWQ74qg8k3Cno0obftcn+bgZIwdBs4bmWrAkWo5NOUvtXCpL13i4zgHV4
 Wo7E7sGJgYcLktsbTswMfxcH90m3YHYWsNV8wMVIbJQBKNramZvEmZR34AIteobXu+cD
 IK0MfEvU1GGstb5NsToUaYw7kWt/UPNGQcW2VnPFlHivaRInWtBTf8C91am5lNbFnk0W
 8zLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750429498; x=1751034298;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8aH+2cNmUyOyiYQl2KGLmPGobUxyHcHxzMcE4912J3o=;
 b=BQGPgrWaN8o1OR0N5o9Oc7K42o6qKDVyLkBlA+6uwMZtIik7bf/IP2IfESFlyjKBBw
 73bepQpzelwzmHkzg/Igg4lKwQdtrFoElSmj282nGpMG9wZC2Y85deWljbdH+5XTcPq4
 BFREv1oRUyMuLszIUGWCjKEmWlnsGKydm8bpifSBR3PpdrgPBm4euqYZfITi45w2gLv9
 YFDHe7sb8WQtUPbFUAH2hfK45wbhvFX0LekJfMbPoIAzCVDoOFfb4a7Potqb5i/1NX0w
 ei3+V6GX5n6i/8fdXUC6vHhrM6MWv7WnOsIn1lyx0p1eTkdKWqtb0L2Uk8BUzzMZEryu
 DxEg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWRmo0qUIl+kofC9gBiHt7YdTckUs/slqok7iK2HZuXldPJoJyTt7jomFyBXUC66AJFn7C2Rvg3MGfSxQkVFOdV/3U=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxakR+YIJvnjQNlQEXrhz5UadkYvHRdfia+pI2JudiVfihd8OMs
 YT8ryNT/IX0natrFFvH2z5vP7xXrNdGgbL1VRLsHvl3Oh6NO0BZlOMnOerR0nnQYVbHw9uYlk6v
 rDlj4pxw=
X-Gm-Gg: ASbGncuiKNiqlSCDpQp2zcgePs7h+aHJv+RtjJAK0+hIKyHnIAC+7LcBogrvsMuZDQH
 lkCIL0R+NbHzxKN1rYYJgHYfpArAk8V/p2lhv+WnEsI3xp33IFOMV6BaX5nRAKfPe8yJzqDAzie
 q2JxldBJkdcxjfgWNpqQZK2yieZt4l5IaUYfbwJxnEgolNZq9Ytd/Fpy+vPJzjkHiVvJGH10Dhd
 PZ31AmUWJnFMLTYBIGwrKrB95Lr73Nhc0UaviulpjsEVSvwKGT5fne4EseAkQhilyVFuVs/ZFiD
 8SRHFUZuhOAI7tx025nt0FVeYLSlg5Hg7S+PHQ/H2Czlaz9CxJm2FM+7ACLK7olQ
X-Google-Smtp-Source: AGHT+IEyVEKaYFNzOB5m3adjaYcIXuQfoB2jpkcttyrE7eoYNv7vcwBFuSg4LwGbxAoOYgodpWz8Vg==
X-Received: by 2002:a05:6870:4584:b0:2bc:7d6f:fa85 with SMTP id
 586e51a60fabf-2eedfc5d96emr2347233fac.16.1750428987163; 
 Fri, 20 Jun 2025 07:16:27 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:680:2e07:b628:1be4])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-2ee66559d90sm403237fac.12.2025.06.20.07.16.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Jun 2025 07:16:26 -0700 (PDT)
Date: Fri, 20 Jun 2025 09:16:20 -0500
From: Corey Minyard <corey@minyard.net>
To: Binbin Zhou <zhoubinbin@loongson.cn>
Message-ID: <aFVtNAY4u2gDiLDS@mail.minyard.net>
References: <cover.1750301674.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1750301674.git.zhoubinbin@loongson.cn>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jun 20, 2025 at 10:06:26AM +0800, Binbin Zhou wrote:
 > Hi all: > > This patch set introduces the Loongson-2K BMC. > > It is a
 PCIe device present on servers similar to the Loongson-3 CPUs. > A [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.48 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uScg1-0000d1-8a
Subject: Re: [Openipmi-developer] [PATCH v5 0/3] LoongArch: Add Loongson-2K
 BMC support
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
Cc: jeffbai@aosc.io, Lee Jones <lee@kernel.org>,
 Corey Minyard <minyard@acm.org>, kexybiscuit@aosc.io,
 Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@kernel.org>,
 linux-kernel@vger.kernel.org, loongarch@lists.linux.dev, wangyao@lemote.com,
 Xuerui Wang <kernel@xen0n.name>, openipmi-developer@lists.sourceforge.net,
 Huacai Chen <chenhuacai@loongson.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Jun 20, 2025 at 10:06:26AM +0800, Binbin Zhou wrote:
> Hi all:
> 
> This patch set introduces the Loongson-2K BMC.
> 
> It is a PCIe device present on servers similar to the Loongson-3 CPUs.
> And it is a multifunctional device (MFD), such as display as a sub-function
> of it.
> 
> For IPMI, according to the existing design, we use software simulation to
> implement the KCS interface registers: Stauts/Command/Data_Out/Data_In.

The IPMI portions look good to me.  You will need acks from the MFD
maintainer and I can get it in through my tree, or I can give you:

For IPMI portions:
Acked-by: Corey Minyard <corey@minyard.net>

and it could go in through the MFD tree.

Thanks,

-corey

> 
> Also since both host side and BMC side read and write kcs status, we use
> fifo pointer to ensure data consistency.
> 
> For the display, based on simpledrm, the resolution is read from a fixed
> position in the BMC since the hardware does not support auto-detection
> of the resolution. Of course, we will try to support multiple
> resolutions later, through a vbios-like approach.
> 
> Especially, for the BMC reset function, since the display will be
> disconnected when BMC reset, we made a special treatment of re-push.
> 
> Based on this, I will present it in four patches:
> patch-1: BMC device PCI resource allocation.
> patch-2: BMC reset function support
> patch-3: IPMI implementation
> 
> Thanks.
> 
> -------
> V5:
> - Rebase on linux-ipmi/for-next branch.
> - Rebase on linux-mfd/for-mfd-next branch.
> Patch (1/3):
>  - Rename ls2kbmc-mfd.c to ls2k-bmc-core.c;
>  - Rename MFD_LS2K_BMC to MFD_LS2K_BMC_CORE and update its help text.
> Patch (3/3):
>  - Add an IPMI_LS2K config in the IPMI section that enables the IPMI
>    interface and selects MFD_LS2K_BMC_CORE.
> 
> Link to V4:
> https://lore.kernel.org/all/cover.1749731531.git.zhoubinbin@loongson.cn/
> 
> V4:
> - Add Reviewed-by tag;
> - Change the order of the patches.
> Patch (1/3):
>   - Fix build warning by lkp: Kconfig tristate -> bool
>     - https://lore.kernel.org/all/202505312022.QmFmGE1F-lkp@intel.com/
>  - Update commit message;
>  - Move MFD_LS2K_BMC after MFD_INTEL_M10_BMC_PMCI in Kconfig and
>    Makefile.
> Patch (2/3):
>   - Remove unnecessary newlines;
>   - Rename ls2k_bmc_check_pcie_connected() to
>     ls2k_bmc_pcie_is_connected();
>   - Update comment message.
> Patch (3/3):
>   - Remove unnecessary newlines.
> 
> Link to V3:
> https://lore.kernel.org/all/cover.1748505446.git.zhoubinbin@loongson.cn/
> 
> V3:
> Patch (1/3):
>  - Drop "MFD" in title and comment;
>  - Fromatting code;
>  - Add clearer comments.
> Patch (2/3):
>  - Rebase linux-ipmi/next tree;
>  - Use readx()/writex() to read and write IPMI data instead of structure
>    pointer references;
>  - CONFIG_LOONGARCH -> MFD_LS2K_BMC;
>  - Drop unused output.
> Patch (3/3):
>  - Inline the ls2k_bmc_gpio_reset_handler() function to ls2k_bmc_pdata_initial();
>  - Add clearer comments.
>  - Use proper multi-line commentary as per the Coding Style documentation;
>  - Define all magic numbers.
> 
> Link to V2:
> https://lore.kernel.org/all/cover.1747276047.git.zhoubinbin@loongson.cn/
> 
> V2:
> - Drop ls2kdrm, use simpledrm instead.
> Patch (1/3):
>  - Use DEFINE_RES_MEM_NAMED/MFD_CELL_RES simplified code;
>  - Add resolution fetching due to replacing the original display
>    solution with simpledrm; 
>  - Add aperture_remove_conflicting_devices() to avoid efifb
>    conflict with simpledrm.
> Patch (3/3):
>  - This part of the function, moved from the original ls2kdrm to mfd;
>  - Use set_console to implement the Re-push display function.
> 
> Link to V1:
> https://lore.kernel.org/all/cover.1735550269.git.zhoubinbin@loongson.cn/
> 
> Binbin Zhou (3):
>   mfd: ls2kbmc: Introduce Loongson-2K BMC core driver
>   mfd: ls2kbmc: Add Loongson-2K BMC reset function support
>   ipmi: Add Loongson-2K BMC support
> 
>  drivers/char/ipmi/Kconfig        |   7 +
>  drivers/char/ipmi/Makefile       |   1 +
>  drivers/char/ipmi/ipmi_si.h      |   7 +
>  drivers/char/ipmi/ipmi_si_intf.c |   4 +
>  drivers/char/ipmi/ipmi_si_ls2k.c | 189 ++++++++++++
>  drivers/mfd/Kconfig              |  11 +
>  drivers/mfd/Makefile             |   2 +
>  drivers/mfd/ls2k-bmc-core.c      | 485 +++++++++++++++++++++++++++++++
>  8 files changed, 706 insertions(+)
>  create mode 100644 drivers/char/ipmi/ipmi_si_ls2k.c
>  create mode 100644 drivers/mfd/ls2k-bmc-core.c
> 
> 
> base-commit: 8ffcb7560b4a15faf821df95e3ab532b2b020f8c
> -- 
> 2.47.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
