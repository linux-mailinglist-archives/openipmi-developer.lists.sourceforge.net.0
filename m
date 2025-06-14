Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 54540AD9925
	for <lists+openipmi-developer@lfdr.de>; Sat, 14 Jun 2025 02:42:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=37iJAfDNSuIqhiUQudmXbNoDDdNd/Z/0vpj94wppF8g=; b=DYR15JPxgCmfjczSYrxgnvpze9
	qQ6nEQfeYHGiz9gCHcgtefwqZn5KKk3IBlu6QXTXrFGLH+sLRpuamB8sLKOnbFIy74lwQXANoH0Aa
	xD6sOBpBOTt5Qewd3zmGRslJMUqXe27R82m9qyBFYjjg7tyIigrFGCurLMDt+U418bqI=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uQExz-0000NA-9r;
	Sat, 14 Jun 2025 00:41:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1uQExy-0000N3-3E
 for openipmi-developer@lists.sourceforge.net;
 Sat, 14 Jun 2025 00:41:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L5NgXkXYPRuWbOpiUNMO6HgoGZd6uy5e0WlDRwFP97E=; b=KA99VGD27VHI/YhS2jXPG/r/2M
 yhX3eq+8FvDx1k5v+HGyCmOJs0lcjyNgTbhYnxfKCuqgOqEM97FvTh2NrpGI6EpkQrCM9Ov7Zv7Pn
 MJzcIuuhPZ7Mdl/VfxoBCY5hG2OYl+moNtDf/ubniJJmLXudeBnPVjT6xjrAvT3EcNYY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=L5NgXkXYPRuWbOpiUNMO6HgoGZd6uy5e0WlDRwFP97E=; b=ZT1DgTXpY1wYwFu1wD29wFnHnA
 5o0Y2S+51YuBjHxJKVfvfWAXX1c3xRDzj+00KEOioSjD9VvRWmC3lwhiyUxhcBg5HhxjfJ6gnsZTV
 327hzS+8mlTXgpQaNMQQ3cGkW0s3j3FBmSvCMAZ2mLGtYXhkj1dwb7f85WMubGyurG4I=;
Received: from mail-ot1-f49.google.com ([209.85.210.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uQExx-0000ur-I6 for openipmi-developer@lists.sourceforge.net;
 Sat, 14 Jun 2025 00:41:50 +0000
Received: by mail-ot1-f49.google.com with SMTP id
 46e09a7af769-73502b47f24so1989871a34.3
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 13 Jun 2025 17:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1749861699; x=1750466499;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=L5NgXkXYPRuWbOpiUNMO6HgoGZd6uy5e0WlDRwFP97E=;
 b=YdUvdAUhYNqPbrX1CbQc1rhKYL519HfeXxU9r8Des8+LbIZsLCybn/DC86ZWu63SYi
 Q8QtJYrjxTmekwLKswNoN2Nyek8IEGNJZm6beL7N8T6DZTZmgWg7UCFULK85oWW1igMs
 1PPStPDFOd9wAKUFQQ9oGnYXMKrI1xHNU7BNStXj6sKZoTF5dEmsTDS9cO7M4fpjuF57
 BPVrYWpZhaBeQWYvHmFuaUhNG2gFSmeY5Fg16YYFFFhAX1mzrKZwRPyt+sHYkL8Trzx9
 tKQmBZhWQ4BQIoiOgnHKKsMG5IS0cmJ0ZdVhO1/3RajFhMwy4vsqcDx7lt2wA4HRpj2j
 6mSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749861699; x=1750466499;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=L5NgXkXYPRuWbOpiUNMO6HgoGZd6uy5e0WlDRwFP97E=;
 b=FvT6ad43gBHbMzcQoL/ZZw5/eJ59t9xgqa1XAj5DAfN9xXVmlnWRsin0PrnFFWgtDJ
 B40KwmkVwxRrYgqEfAf1e9dBl++1yjRJdQfiQ5VYsPhCpuXAkbOkVqUS41ib0Eom3VNS
 wQqPqX3idi1GP5YxofgDo6n+WHx4FYI1/ZgP0knz3VxxKb7QzT4oRoTJNxu5rqO/kouJ
 f0HIA7sBKzXWlDtzeFWIdmBlz3z3lKiAZExEBk+qPZLn6D+E32L64MswIXYkJF5zww/V
 wSddvthjRqOlOGlD3JIboZGch0Z7FGKN4kTX99kqsL1vPgdDAUDKjW/zLq6Fea7DIlEt
 W1ng==
X-Forwarded-Encrypted: i=1;
 AJvYcCXwP/5ly8sHjpGYpXwJjnMW2Rkjzff0nVm9wYtBLFiFFtX2bFjAQ5vOamlTaq+hhLFGMxVBs4/MKc1B5+BIgPWEIVk=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyW6vnwHXV4S7EwECC2TPIUhq1T6YfqHuPISkkEjL9SlsvzE27I
 gMQEq6LhQyCx3wF+bdsFZGBhjpTf7sK1wJ4daw4xR8HDp4iQxxc9A5bi2o3SdzRoyzY=
X-Gm-Gg: ASbGncvrjBiOGhM3HhslAevnXdOxjVvLVeVRnBr9WZAwvXwOAS8xERxx3KonW1Wllqv
 Gh0FmllyksSC3UdGtP91t6XEexawm/4Jb2reKFs/6nleg+9yFqTnVSrP/MedLYwRzlmAP/ulWPX
 xP2I6U1jSqVjv/VuaJeUlRcLkKn7ym6Atq38J0PWwEm+MY0bB0hP/O0UjMlkPyDqCiPG5o3+wZf
 sHYAv5nFwHyf6hcJwEs7D4xl8b9yUIHYOmyICuvtIWaqmT4aOcEZK+D+So7QZ7MHoKoA9xKZv4L
 IyfSuwzU6QF+ixI4/kOYOvsSK/GcukfWH+Gx5zbNkOmAIJnYwjTT7zTZIQFj0PXh7A==
X-Google-Smtp-Source: AGHT+IH4htV1XZAM2fhjqi+RYSUf/curz1PkLjtyD8jI7j76IZ4AV/PeMuWUKVsn6dUMPlbPKxtGjg==
X-Received: by 2002:a05:6830:2c06:b0:72c:320c:d898 with SMTP id
 46e09a7af769-73a363f5a90mr1189572a34.22.1749861698810; 
 Fri, 13 Jun 2025 17:41:38 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:f41f:8468:bca8:a5f7])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-73a28403c08sm402940a34.25.2025.06.13.17.41.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Jun 2025 17:41:38 -0700 (PDT)
Date: Fri, 13 Jun 2025 19:41:33 -0500
From: Corey Minyard <corey@minyard.net>
To: Binbin Zhou <zhoubinbin@loongson.cn>
Message-ID: <aEzFPdYEvbkaH_B5@mail.minyard.net>
References: <cover.1749731531.git.zhoubinbin@loongson.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1749731531.git.zhoubinbin@loongson.cn>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Jun 13, 2025 at 02:43:38PM +0800, Binbin Zhou wrote:
 > Hi all: > > This patch set introduces the Loongson-2K BMC. > > It is a
 PCIe device present on servers similar to the Loongson-3 CPUs. > A [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.49 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uQExx-0000ur-I6
Subject: Re: [Openipmi-developer] [PATCH v4 0/3] LoongArch: Add Loongson-2K
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

On Fri, Jun 13, 2025 at 02:43:38PM +0800, Binbin Zhou wrote:
> Hi all:
> 
> This patch set introduces the Loongson-2K BMC.
> 
> It is a PCIe device present on servers similar to the Loongson-3 CPUs.
> And it is a multifunctional device (MFD), such as display as a sub-function
> of it.

I've asked this before, but I haven't gotten a answer, I don't think.

Is this really a multi-function device?  Is there (or will there be)
another driver that uses the MFD code?

If nothing else is going to use this, then it's really not a
multi-function device and all the code can go into the IPMI directory.
That simplifies maintenance.

If it is a multi-function device, then I want two separate Kconfig
items, one for the MFD and one for the IPMI portion.  That way it's
ready and you don't have to bother about the IPMI portion when
adding the other device.

All else looks good, I think.

-corey

> 
> For IPMI, according to the existing design, we use software simulation to
> implement the KCS interface registers: Stauts/Command/Data_Out/Data_In.
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
>  drivers/char/ipmi/Makefile       |   1 +
>  drivers/char/ipmi/ipmi_si.h      |   7 +
>  drivers/char/ipmi/ipmi_si_intf.c |   3 +
>  drivers/char/ipmi/ipmi_si_ls2k.c | 189 ++++++++++++
>  drivers/mfd/Kconfig              |  12 +
>  drivers/mfd/Makefile             |   2 +
>  drivers/mfd/ls2kbmc-mfd.c        | 485 +++++++++++++++++++++++++++++++
>  7 files changed, 699 insertions(+)
>  create mode 100644 drivers/char/ipmi/ipmi_si_ls2k.c
>  create mode 100644 drivers/mfd/ls2kbmc-mfd.c
> 
> 
> base-commit: cd2e103d57e5615f9bb027d772f93b9efd567224
> -- 
> 2.47.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
