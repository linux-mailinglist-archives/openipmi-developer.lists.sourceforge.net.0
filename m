Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A605489AC81
	for <lists+openipmi-developer@lfdr.de>; Sat,  6 Apr 2024 19:38:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rt9zG-0006QF-UX;
	Sat, 06 Apr 2024 17:37:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <patchwork-bot+netdevbpf@kernel.org>)
 id 1rsyTr-0005M2-Dm for openipmi-developer@lists.sourceforge.net;
 Sat, 06 Apr 2024 05:20:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Date:Message-Id:From:
 Subject:Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nE2uRvTv/U2m0+ghgElBUjbItaNExt97aA+SSiNR/Ik=; b=YRJkvkJQfp7xd76U5Ghlzd5NHW
 Q5pcdw7RZZWxGhvUjLeLhkfUX9+L3ARh9K0sgOipit8SHNx/oH7b0jl3+itCQdSU5y8G268hI5eOj
 GKWFFAcycgPZfx7RthiBxujmAhMEKRrOIRJESuJOUlqIPQMc1c6Yc4oY5TA9NXcJJNjI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Cc:To:In-Reply-To:References:Date:Message-Id:From:Subject:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nE2uRvTv/U2m0+ghgElBUjbItaNExt97aA+SSiNR/Ik=; b=c1ygfs6iCJRVP1S32GhCXWA9RY
 XsGaArDTCpp/DiXB0P7nwW2uFMBSOrRL33Q+rangAhKqFG+CfxVaYsBKf9Zsffw9rolaq4JajJtwX
 gt8TO8WSS6b2z3j7sRYFjTCUssBSHGmEnpUUWqu91Tdiscnnagyg9YzMgfE6pupZus4s=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rsyTo-0004es-U7 for openipmi-developer@lists.sourceforge.net;
 Sat, 06 Apr 2024 05:20:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 0D4D5CE2777;
 Sat,  6 Apr 2024 05:20:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3C5A9C433C7;
 Sat,  6 Apr 2024 05:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1712380828;
 bh=TBj/hcnPrvS19ZOluMZ12evt8AeDaDrUTBeM5kaTuKY=;
 h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
 b=HYazYNypOS+iPe/PmwIZVgrP0OAjOmuWcCZaXmQBd5/DF3DU2Cm7HK1KTLKVM8W2j
 EfdrhznuDsHvbEh7NeV1r2EDMVkxTqo+hmKt5MdFIcqj68UTB4u7gvHG6geAe3ArfV
 cYxb7yc2nqhO3pPj8ToTFIgL78NntzPlzi3tNk1u8F7N5z7SqSGJ1Z/QhHbUaQaR1j
 GTv/7bDPNNXqFXoXNMGCl3bjIAtmML/lX++bgYkRjXumLNf6dEzpQPrpxdPeyVgSKh
 czfxRuHIWxcuBJ6wGSXEzVfHmRCYmRJdToESEDFulu3u4HF5IZUSSU3tkxxLhyQRAI
 TbkNIwkM8MMRA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 19C9BD84BAC; Sat,  6 Apr 2024 05:20:28 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <171238082809.31617.17365732495689756509.git-patchwork-notify@kernel.org>
Date: Sat, 06 Apr 2024 05:20:28 +0000
References: <20240403080702.3509288-1-arnd@kernel.org>
In-Reply-To: <20240403080702.3509288-1-arnd@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Hello: This series was applied to netdev/net-next.git (main)
 by Jakub Kicinski <kuba@kernel.org>: On Wed, 3 Apr 2024 10:06:18 +0200 you
 wrote: > From: Arnd Bergmann <arnd@arndb.de> > > Compilers traditionally
 warn for unused 'static' variables, but not > if they are constant. The reason
 here is a [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [145.40.73.55 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rsyTo-0004es-U7
X-Mailman-Approved-At: Sat, 06 Apr 2024 17:37:54 +0000
Subject: Re: [Openipmi-developer] [PATCH 00/34] address all -Wunused-const
 warnings
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
Cc: Shyam-sundar.S-k@amd.com, heiko@sntech.de, rafael@kernel.org,
 dri-devel@lists.freedesktop.org, benjamin.tissoires@redhat.com,
 srinivas.pandruvada@linux.intel.com, hch@lst.de,
 linux-samsung-soc@vger.kernel.org, mpe@ellerman.id.au,
 christophe.leroy@csgroup.eu, linux-pm@vger.kernel.org,
 linux-sound@vger.kernel.org, abbotti@mev.co.uk, linux-omap@vger.kernel.org,
 trond.myklebust@hammerspace.com, elder@kernel.org, kristo@kernel.org,
 chenxiang66@hisilicon.com, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 hsweeten@visionengravers.com, iyappan@os.amperecomputing.com,
 linux-crypto@vger.kernel.org, akpm@linux-foundation.org,
 linux-trace-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
 alexandre.belloni@bootlin.com, markuss.broks@gmail.com,
 hvaibhav.linux@gmail.com, linux-i2c@vger.kernel.org, lars@metafoo.de,
 minyard@acm.org, deller@gmx.de, lee@kernel.org, linux-clk@vger.kernel.org,
 linux-rockchip@lists.infradead.org, iommu@lists.linux.dev,
 yisen.zhuang@huawei.com, lenb@kernel.org, andi.shyti@kernel.org,
 michael.hennerich@analog.com, linux-kbuild@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, greybus-dev@lists.linaro.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 neil.armstrong@linaro.org, sboyd@kernel.org, jarkko@kernel.org,
 anna@kernel.org, linux-integrity@vger.kernel.org, alsa-devel@alsa-project.org,
 jic23@kernel.org, linux-efi@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-fpga@vger.kernel.org, linux-fbdev@vger.kernel.org,
 kasan-dev@googlegroups.com, jirislaby@kernel.org, linux-rtc@vger.kernel.org,
 stf_xl@wp.pl, masahiroy@kernel.org, linux-staging@lists.linux.dev,
 linux-input@vger.kernel.org, ychuang3@nuvoton.com, keescook@chromium.org,
 arnd@arndb.de, jikos@kernel.org, robin.murphy@arm.com, rostedt@goodmis.org,
 nathan@kernel.org, broonie@kernel.org, mdf@kernel.org,
 openipmi-developer@lists.sourceforge.net, linux-nfs@vger.kernel.org,
 martin.petersen@oracle.com, dmitry.torokhov@gmail.com, sre@kernel.org,
 peda@axentia.se, linux-stm32@st-md-mailman.stormreply.com, tony@atomide.com,
 liviu.dudau@arm.com, alexandre.torgue@foss.st.com, linux-ide@vger.kernel.org,
 peterhuewe@gmx.de, ardb@kernel.org, linux-leds@vger.kernel.org,
 herbert@gondor.apana.org.au, linux-scsi@vger.kernel.org, vkoul@kernel.org,
 linux-serial@vger.kernel.org, kuba@kernel.org, mhiramat@kernel.org,
 kvalo@kernel.org, john.allen@amd.com, netdev@vger.kernel.org,
 andersson@kernel.org, tiwai@suse.com, krzysztof.kozlowski@linaro.org,
 dlemoal@kernel.org, dmaengine@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hello:

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Wed,  3 Apr 2024 10:06:18 +0200 you wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Compilers traditionally warn for unused 'static' variables, but not
> if they are constant. The reason here is a custom for C++ programmers
> to define named constants as 'static const' variables in header files
> instead of using macros or enums.
> 
> [...]

Here is the summary with links:
  - [05/34] 3c515: remove unused 'mtu' variable
    https://git.kernel.org/netdev/net-next/c/17b35355c2c6
  - [19/34] sunrpc: suppress warnings for unused procfs functions
    (no matching commit)
  - [26/34] isdn: kcapi: don't build unused procfs code
    https://git.kernel.org/netdev/net-next/c/91188544af06
  - [28/34] net: xgbe: remove extraneous #ifdef checks
    https://git.kernel.org/netdev/net-next/c/0ef416e045ad
  - [33/34] drivers: remove incorrect of_match_ptr/ACPI_PTR annotations
    (no matching commit)

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html




_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
