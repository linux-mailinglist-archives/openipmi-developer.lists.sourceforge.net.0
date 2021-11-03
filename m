Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A39443AB6
	for <lists+openipmi-developer@lfdr.de>; Wed,  3 Nov 2021 02:09:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mi4mF-0003lP-Cz; Wed, 03 Nov 2021 01:09:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <zev@bewilderbeest.net>) id 1mi4mE-0003lI-84
 for openipmi-developer@lists.sourceforge.net; Wed, 03 Nov 2021 01:09:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iTZTBOjfSh7XiWe09ovhMtLZtImMT6hWBNd+v7DYFsY=; b=klUl3jCjjzvamFx5fSfNJeXhsw
 rHypFqZEOy+IJRZ1ca6yOQ/N0xRlU8HIu3ttZR+FE4O7336iUeXFebEkePz+O8H1UlkQ6/EwijH+W
 DHNmw49X/4tCLX77GQlia7DpbTvTDRUeLXklkBo0JihbuW8LurRBhnrFCXCFfs7qmU3c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iTZTBOjfSh7XiWe09ovhMtLZtImMT6hWBNd+v7DYFsY=; b=bt/P4Ra34SXpr/7Rhxp9XBIplT
 ZlvuJa0oFzpjhp3CM1lzPlG/65sdqn5+BJqhw4bMPw76aOx38csVVP6mPSdNtizF9R0bG3X7TNkcb
 LzYBxtlt0yo8mkB9ALv11mnRAgo3mySq1AwDu/jnDOlYs0jbK8usXO63Sg/n4fiF/gvY=;
Received: from thorn.bewilderbeest.net ([71.19.156.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mi4mA-0003Rn-KE
 for openipmi-developer@lists.sourceforge.net; Wed, 03 Nov 2021 01:09:18 +0000
Received: from hatter.bewilderbeest.net (97-113-240-219.tukw.qwest.net
 [97.113.240.219])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: zev)
 by thorn.bewilderbeest.net (Postfix) with ESMTPSA id 041C0285;
 Tue,  2 Nov 2021 18:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bewilderbeest.net;
 s=thorn; t=1635901749;
 bh=iTZTBOjfSh7XiWe09ovhMtLZtImMT6hWBNd+v7DYFsY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=o3O2XfbdoRBhVHVoBP3M7wH68W+/apxqwAweDnThsHWsOpg4DZ2uAtVPSuBUzwfXB
 7QHaSGWN8u8+v2JXZX0MV43wXoPwwDGxnxnRCtYMM65kRd0D4eqPnJEwA/PawiFrmc
 nvvRUEF9IQYJseL8usmCZtLbIZyyCdP4Jn/urVV0=
Date: Tue, 2 Nov 2021 18:09:04 -0700
From: Zev Weiss <zev@bewilderbeest.net>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Message-ID: <YYHhMGm4C0srTW1x@hatter.bewilderbeest.net>
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <CACPK8XfBi+jY5ftLqsEVXHe01SQBNpTSwo+WtXN3=YUQnXACtw@mail.gmail.com>
 <YYHSHoELvKRI4Zh1@hatter.bewilderbeest.net>
 <d2a18e3b-cb02-37b5-cad8-45c3e8ff3bb4@linux.intel.com>
 <YYHYMKDD7hz15ceR@hatter.bewilderbeest.net>
 <63678f47-8b4a-1385-a755-bc7c2316ca0d@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <63678f47-8b4a-1385-a755-bc7c2316ca0d@linux.intel.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Nov 02, 2021 at 05:54:30PM PDT, Jae Hyun Yoo wrote:
 > > >On 11/2/2021 5:30 PM, Zev Weiss wrote: >>On Tue, Nov 02,
 2021 at 05:17:30PM
 PDT, Jae Hyun Yoo wrote: >>>Hi Zev, >>> >>>On 11/2/2021 5:0 [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: bewilderbeest.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mi4mA-0003Rn-KE
Subject: Re: [Openipmi-developer] [PATCH -next 0/4] Add LCLK control into
 Aspeed LPC sub drivers
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Corey Minyard <minyard@acm.org>,
 Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
 Jae Hyun Yoo <jae.hyun.yoo@intel.com>,
 openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>, Cedric Le Goater <clg@kaod.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Nov 02, 2021 at 05:54:30PM PDT, Jae Hyun Yoo wrote:
>
>
>On 11/2/2021 5:30 PM, Zev Weiss wrote:
>>On Tue, Nov 02, 2021 at 05:17:30PM PDT, Jae Hyun Yoo wrote:
>>>Hi Zev,
>>>
>>>On 11/2/2021 5:04 PM, Zev Weiss wrote:
>>>>On Mon, Nov 01, 2021 at 04:36:38PM PDT, Joel Stanley wrote:
>>>>>On Mon, 1 Nov 2021 at 23:18, <jae.hyun.yoo@intel.com> wrote:
>>>>>>
>>>>>>From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>>>>>>
>>>>>>Hello all,
>>>>>>
>>>>>>This series is for appliying below fix to all Aspped LPC sub drivers.
>>>>>>https://lore.kernel.org/all/20201208091748.1920-1-wangzhiqiang.bj@bytedance.com/
>>>>>>
>>>>>>
>>>>>>
>>>>>>An LPC sub driver can be enabled without using the lpc-ctrl 
>>>>>>driver or it
>>>>>>can be registered ahead of lpc-ctrl depends on each system 
>>>>>>configuration and
>>>>>>this difference introduces that LPC can be enabled without 
>>>>>>heart beating of
>>>>>>LCLK so it causes improper handling on host interrupts when 
>>>>>>the host sends
>>>>>>interrupts in that time frame. Then kernel eventually 
>>>>>>forcibly disables the
>>>>>>interrupt with dumping stack and printing a 'nobody cared 
>>>>>>this irq' message
>>>>>>out.
>>>>>>
>>>>>>To prevent this issue, all LPC sub drivers should enable 
>>>>>>LCLK individually
>>>>>>so this patch adds clock control logic into the remaining 
>>>>>>Aspeed LPC sub
>>>>>>drivers.
>>>>>
>>>>>Thanks for sending this out!
>>>>>
>>>>>This will resolve a few of the issues we have in the issue tracker:
>>>>>
>>>>>https://github.com/openbmc/linux/issues/210
>>>>>https://github.com/openbmc/linux/issues/130
>>>>>
>>>>>The patches look good to me. I think you've just missed Corey's PR for
>>>>>v5.16, but I will stick them in the openbmc tree once they've had a
>>>>>review.
>>>>>
>>>>
>>>>Hi Jae,
>>>>
>>>>I tried this series out on the same in-progress OpenBMC port 
>>>>from issue number 210 linked above and am still seeing problems 
>>>>(dmesg pasted below).
>>>>
>>>>I cherry-picked commit f9241fe8b9652 ("ARM: dts: aspeed: Add 
>>>>uart routing to device tree") from linux-next to allow the first 
>>>>patch to apply cleanly; is there anything else I might be 
>>>>missing that'd be needed to test the series properly?
>>>
>>>Looks like below dmesg shows an error from 'aspeed_lpc_snoop_probe'
>>>which this series doesn't touch. Do you have below fix in your code
>>>tree?
>>>
>>>https://lore.kernel.org/all/20201208091748.1920-1-wangzhiqiang.bj@bytedance.com/
>>>
>>>
>>>Thanks,
>>>Jae
>>>
>>
>>Yes, I've got that patch (commit 3f94cf1558), and the accompanying 
>>dts update to add the clocks property to the lpc-snoop device 
>>(commit d050d049f8).
>>
>>However, while there is an aspeed_lpc_snoop_probe() backtrace there, 
>>note that there's *also* one from aspeed_kcs_probe() further on 
>>(starting at timestamp 3.263306).
>>
>>
>>Zev
>>
>
>Can you please test additional changes below?
>

No clear improvement with that unfortunately (note that the formatting 
of the patch got pretty mangled there and required a lot of manual 
tweaking to apply, but I think I tested the intended thing).

dmesg results below.


Zev


[    0.425073] irq 32: nobody cared (try booting with the "irqpoll" option)
[    0.425118] CPU: 0 PID: 1 Comm: swapper Not tainted 5.14.11-aee45db-dirty-4b119be-hacked #1
[    0.425161] Hardware name: Generic DT based system
[    0.425185] Backtrace: 
[    0.425219] [<807e6504>] (dump_backtrace) from [<807e6758>] (show_stack+0x20/0x24)
[    0.425315]  r7:00000000 r6:00000008 r5:00000000 r4:80902b50
[    0.425339] [<807e6738>] (show_stack) from [<807f09f0>] (dump_stack+0x28/0x30)
[    0.425397] [<807f09c8>] (dump_stack) from [<807e76e0>] (__report_bad_irq+0x40/0xc0)
[    0.425454]  r5:00000000 r4:80d43900
[    0.425473] [<807e76a0>] (__report_bad_irq) from [<80159c10>] (note_interrupt+0x284/0x2dc)
[    0.425555]  r9:80cbc000 r8:00000020 r7:00000000 r6:00000008 r5:00000000 r4:80d43900
[    0.425577] [<8015998c>] (note_interrupt) from [<801569d4>] (handle_irq_event+0xb4/0xc0)
[    0.425637]  r10:00000000 r9:80cbc000 r8:80d439a8 r7:00000000 r6:00000008 r5:00000000
[    0.425663]  r4:80d43900 r3:00000000
[    0.425681] [<80156920>] (handle_irq_event) from [<8015acd0>] (handle_level_irq+0xac/0x180)
[    0.425738]  r5:00000000 r4:80d43900
[    0.425758] [<8015ac24>] (handle_level_irq) from [<80155fa4>] (handle_domain_irq+0x60/0x7c)
[    0.425811]  r5:00000000 r4:80b8e7c8
[    0.425829] [<80155f44>] (handle_domain_irq) from [<8010121c>] (avic_handle_irq+0x64/0x6c)
[    0.425886]  r7:80cbdc94 r6:ffffffff r5:80cbdc60 r4:80c02420
[    0.425908] [<801011b8>] (avic_handle_irq) from [<80100aec>] (__irq_svc+0x6c/0x90)
[    0.425954] Exception stack(0x80cbdc60 to 0x80cbdca8)
[    0.425994] dc60: 00000000 00000000 00000000 00000000 80d43900 00000000 8529d700 00000020
[    0.426029] dc80: 80d439a8 60000053 00000000 80cbdcdc 00000000 80cbdcb0 8015a520 80157d4c
[    0.426057] dca0: 40000053 ffffffff
[    0.426083]  r5:40000053 r4:80157d4c
[    0.426101] [<80157a0c>] (__setup_irq) from [<8015844c>] (request_threaded_irq+0xe8/0x16c)
[    0.426166]  r9:852b07a0 r8:00000020 r7:80d43910 r6:80d43900 r5:00000000 r4:8529d700
[    0.426186] [<80158364>] (request_threaded_irq) from [<8015bd80>] (devm_request_threaded_irq+0x78/0xd0)
[    0.426257]  r10:8092ed9c r9:00000000 r8:852b07a0 r7:80d42410 r6:00000020 r5:804600bc
[    0.426283]  r4:8529d220 r3:00000080
[    0.426302] [<8015bd08>] (devm_request_threaded_irq) from [<80460514>] (aspeed_lpc_snoop_probe+0x15c/0x2e0)
[    0.426392]  r10:80bab000 r9:80983b68 r8:80d42410 r7:8529d100 r6:80d42400 r5:852b07a0
[    0.426414]  r4:00000000
[    0.426431] [<804603b8>] (aspeed_lpc_snoop_probe) from [<804e69a8>] (platform_probe+0x54/0x9c)
[    0.426515]  r8:00000000 r7:80d42410 r6:80b6f3dc r5:80b6f3dc r4:80d42410
[    0.426535] [<804e6954>] (platform_probe) from [<804e4534>] (really_probe+0x1c4/0x46c)
[    0.426588]  r5:00000000 r4:80d42410
[    0.426609] [<804e4370>] (really_probe) from [<804e48b0>] (__driver_probe_device+0xd4/0x1bc)
[    0.426661]  r7:80d42410 r6:80d42410 r5:80bcb44c r4:80b6f3dc
[    0.426679] [<804e47dc>] (__driver_probe_device) from [<804e49d8>] (driver_probe_device+0x40/0xd8)
[    0.426736]  r9:80983b68 r8:00000000 r7:80d42410 r6:80b6f3dc r4:80bcb340
[    0.426757] [<804e4998>] (driver_probe_device) from [<804e4d3c>] (__driver_attach+0xa4/0x1c8)
[    0.426814]  r9:80983b68 r8:80a2c838 r7:80b71638 r6:80b6f3dc r5:80d42454 r4:80d42410
[    0.426834] [<804e4c98>] (__driver_attach) from [<804e214c>] (bus_for_each_dev+0x84/0xd0)
[    0.426890]  r7:80b71638 r6:804e4c98 r5:80b6f3dc r4:00000000
[    0.426912] [<804e20c8>] (bus_for_each_dev) from [<804e5468>] (driver_attach+0x28/0x30)
[    0.426964]  r6:00000000 r5:852aa660 r4:80b6f3dc
[    0.426984] [<804e5440>] (driver_attach) from [<804e2ae8>] (bus_add_driver+0x114/0x200)
[    0.427028] [<804e29d4>] (bus_add_driver) from [<804e5b04>] (driver_register+0x98/0x128)
[    0.427080]  r7:00000000 r6:00000007 r5:00000000 r4:80b6f3dc
[    0.427100] [<804e5a6c>] (driver_register) from [<804e7c54>] (__platform_driver_register+0x2c/0x34)
[    0.427159]  r5:80c03e40 r4:80a1997c
[    0.427179] [<804e7c28>] (__platform_driver_register) from [<80a1999c>] (aspeed_lpc_snoop_driver_init+0x20/0x28)
[    0.427237] [<80a1997c>] (aspeed_lpc_snoop_driver_init) from [<80a01408>] (do_one_initcall+0x64/0x144)
[    0.427310] [<80a013a4>] (do_one_initcall) from [<80a016e4>] (kernel_init_freeable+0x198/0x218)
[    0.427377]  r7:80a2c858 r6:00000007 r5:80c03e40 r4:80a4c8f0
[    0.427399] [<80a0154c>] (kernel_init_freeable) from [<807f0c48>] (kernel_init+0x20/0x134)
[    0.427463]  r10:00000000 r9:00000000 r8:00000000 r7:00000000 r6:00000000 r5:807f0c28
[    0.427487]  r4:00000000
[    0.427506] [<807f0c28>] (kernel_init) from [<80100130>] (ret_from_fork+0x14/0x24)
[    0.427556] Exception stack(0x80cbdfb0 to 0x80cbdff8)
[    0.427593] dfa0:                                     00000000 00000000 00000000 00000000
[    0.427628] dfc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.427660] dfe0: 00000000 00000000 00000000 00000000 00000013 00000000
[    0.427688]  r5:807f0c28 r4:00000000
[    0.427706] handlers:
[    0.427723] [<(ptrval)>] aspeed_lpc_snoop_irq
[    0.427791] Disabling IRQ #32
[    0.638760] Serial: 8250/16550 driver, 6 ports, IRQ sharing enabled
[    0.649120] 1e787000.serial: ttyS5 at MMIO 0x1e787000 (irq = 32, base_baud = 1546875) is a 8250
[    0.651220] 1e784000.serial: ttyS4 at MMIO 0x1e784000 (irq = 31, base_baud = 1500000) is a 16550A
[    2.020143] Freeing initrd memory: 1072K
[    2.234013] printk: console [ttyS4] enabled
[    2.240436] timeriomem_rng 1e6e2078.hwrng: 32bits from 0x5a0c8e0a @ 1us
[    2.263519] loop: module loaded
[    2.285336] aspeed-smc 1e620000.spi: Using 100 MHz SPI frequency
[    2.291781] aspeed-smc 1e620000.spi: mx66l51235f (65536 Kbytes)
[    2.297774] aspeed-smc 1e620000.spi: CE0 window [ 0x20000000 - 0x24000000 ] 64MB
[    2.305301] aspeed-smc 1e620000.spi: CE1 window [ 0x24000000 - 0x2a000000 ] 96MB
[    2.312810] aspeed-smc 1e620000.spi: read control register: 203c0641
[    2.543850] 5 fixed-partitions partitions found on MTD device bmc
[    2.550093] Creating 5 MTD partitions on "bmc":
[    2.554677] 0x000000000000-0x0000000e0000 : "u-boot"
[    2.562517] 0x0000000e0000-0x000000100000 : "u-boot-env"
[    2.570803] 0x000000100000-0x000000a00000 : "kernel"
[    2.578741] 0x000000a00000-0x000002a00000 : "rofs"
[    2.586351] 0x000002a00000-0x000004000000 : "rwfs"
[    2.595769] aspeed-smc 1e630000.spi: Using 50 MHz SPI frequency
[    2.601925] aspeed-smc 1e630000.spi: unrecognized JEDEC id bytes: 00 00 00 00 00 00
[    2.609715] aspeed-smc 1e630000.spi: Aspeed SMC probe failed -2
[    2.615673] aspeed-smc: probe of 1e630000.spi failed with error -2
[    2.629807] libphy: Fixed MDIO Bus: probed
[    2.635910] ftgmac100 1e660000.ethernet: Read MAC address d0:50:99:f4:1e:18 from chip
[    2.652487] libphy: ftgmac100_mdio: probed
[    2.657714] RTL8211E Gigabit Ethernet 1e660000.ethernet--1:00: attached PHY driver (mii_bus:phy_addr=1e660000.ethernet--1:00, irq=POLL)
[    2.671153] ftgmac100 1e660000.ethernet eth0: irq 20, mapped at 31b7a2b2
[    2.681960] aspeed_vhub 1e6a0000.usb-vhub: Initialized virtual hub in USB2 mode
[    2.689974] Mass Storage Function, version: 2009/09/11
[    2.695169] LUN: removable file: (no medium)
[    2.699621] no file given for LUN0
[    2.703126] g_mass_storage 1e6a0000.usb-vhub:p1: failed to start g_mass_storage: -22
[    2.711656] i2c /dev entries driver
[    2.717000] aspeed-i2c-bus 1e78a040.i2c-bus: i2c bus 0 registered, irq 33
[    2.725583] aspeed-i2c-bus 1e78a080.i2c-bus: i2c bus 1 registered, irq 34
[    2.735502] aspeed-i2c-bus 1e78a0c0.i2c-bus: i2c bus 2 registered, irq 35
[    2.743830] aspeed-i2c-bus 1e78a100.i2c-bus: i2c bus 3 registered, irq 36
[    2.752145] aspeed-i2c-bus 1e78a140.i2c-bus: i2c bus 4 registered, irq 37
[    2.761322] aspeed-i2c-bus 1e78a180.i2c-bus: i2c bus 5 registered, irq 38
[    2.769610] aspeed-i2c-bus 1e78a1c0.i2c-bus: i2c bus 6 registered, irq 39
[    2.779443] at24 7-0050: 16384 byte 24c128 EEPROM, writable, 16 bytes/write
[    2.786675] aspeed-i2c-bus 1e78a300.i2c-bus: i2c bus 7 registered, irq 40
[    2.794972] aspeed-i2c-bus 1e78a340.i2c-bus: i2c bus 8 registered, irq 41
[    2.803273] aspeed-i2c-bus 1e78a380.i2c-bus: i2c bus 9 registered, irq 42
[    2.816561] at24 14-0050: 2048 byte 24c16 EEPROM, read-only
[    2.822535] i2c i2c-2: Added multiplexed i2c bus 14
[    2.828115] i2c i2c-2: Added multiplexed i2c bus 15
[    2.833787] i2c i2c-2: Added multiplexed i2c bus 16
[    2.839596] i2c i2c-2: Added multiplexed i2c bus 17
[    2.844572] pca954x 2-0070: registered 4 multiplexed busses for I2C switch pca9545
[    2.853735] i2c i2c-5: Added multiplexed i2c bus 18
[    2.859577] i2c i2c-5: Added multiplexed i2c bus 19
[    2.865233] i2c i2c-5: Added multiplexed i2c bus 20
[    2.871052] i2c i2c-5: Added multiplexed i2c bus 21
[    2.876022] pca954x 5-0073: registered 4 multiplexed busses for I2C switch pca9545
[    2.886206] Driver for 1-wire Dallas network protocol.
[    3.011064] NET: Registered PF_INET6 protocol family
[    3.019138] Segment Routing with IPv6
[    3.023663] NET: Registered PF_PACKET protocol family
[    3.029388] 8021q: 802.1Q VLAN Support v1.8
[    3.044832] ast-kcs-bmc 1e78902c.kcs: Initialised raw client for channel 3
[    3.052335] ast-kcs-bmc 1e78902c.kcs: Initialised IPMI client for channel 3
[    3.274513] irq 32: nobody cared (try booting with the "irqpoll" option)
[    3.281266] CPU: 0 PID: 5 Comm: kworker/u2:0 Not tainted 5.14.11-aee45db-dirty-4b119be-hacked #1
[    3.290082] Hardware name: Generic DT based system
[    3.294891] Workqueue: events_unbound deferred_probe_work_func
[    3.300786] Backtrace: 
[    3.303263] [<807e6504>] (dump_backtrace) from [<807e6758>] (show_stack+0x20/0x24)
[    3.310902]  r7:00000000 r6:00000008 r5:00000000 r4:80902b50
[    3.316567] [<807e6738>] (show_stack) from [<807f09f0>] (dump_stack+0x28/0x30)
[    3.323841] [<807f09c8>] (dump_stack) from [<807e76e0>] (__report_bad_irq+0x40/0xc0)
[    3.331628]  r5:00000000 r4:80d43900
[    3.335217] [<807e76a0>] (__report_bad_irq) from [<80159c10>] (note_interrupt+0x284/0x2dc)
[    3.343542]  r9:80cc6000 r8:00000020 r7:00000000 r6:00000008 r5:00000000 r4:80d43900
[    3.351293] [<8015998c>] (note_interrupt) from [<801569d4>] (handle_irq_event+0xb4/0xc0)
[    3.359437]  r10:00000000 r9:80cc6000 r8:80d439a8 r7:00000000 r6:00000008 r5:00000000
[    3.367270]  r4:80d43900 r3:00000400
[    3.370854] [<80156920>] (handle_irq_event) from [<8015acd0>] (handle_level_irq+0xac/0x180)
[    3.379251]  r5:00000000 r4:80d43900
[    3.382841] [<8015ac24>] (handle_level_irq) from [<80155fa4>] (handle_domain_irq+0x60/0x7c)
[    3.391239]  r5:00000000 r4:80b8e7c8
[    3.394826] [<80155f44>] (handle_domain_irq) from [<8010121c>] (avic_handle_irq+0x64/0x6c)
[    3.403140]  r7:80cc7c84 r6:ffffffff r5:80cc7c50 r4:80c02420
[    3.408814] [<801011b8>] (avic_handle_irq) from [<80100aec>] (__irq_svc+0x6c/0x90)
[    3.416417] Exception stack(0x80cc7c50 to 0x80cc7c98)
[    3.421493] 7c40:                                     00000000 00000000 00000000 00000000
[    3.429688] 7c60: 80d43900 8529d700 851206c0 00000020 80d439a8 a0000013 00000000 80cc7ccc
[    3.437876] 7c80: 00000400 80cc7ca0 8015a520 80157d4c 40000013 ffffffff
[    3.444502]  r5:40000013 r4:80157d4c
[    3.448091] [<80157a0c>] (__setup_irq) from [<8015844c>] (request_threaded_irq+0xe8/0x16c)
[    3.456407]  r9:8505fb20 r8:00000020 r7:80d43910 r6:80d43900 r5:00000000 r4:851206c0
[    3.464160] [<80158364>] (request_threaded_irq) from [<8015bd80>] (devm_request_threaded_irq+0x78/0xd0)
[    3.473613]  r10:80d4ea20 r9:00000000 r8:8505fb20 r7:80d42c10 r6:00000020 r5:8044fd64
[    3.481452]  r4:851207a0 r3:00000080
[    3.485037] [<8015bd08>] (devm_request_threaded_irq) from [<804505f0>] (aspeed_kcs_probe+0x244/0x67c)
[    3.494324]  r10:8505fb54 r9:80833650 r8:ffffffea r7:80d42c10 r6:00000020 r5:8505fb20
[    3.502166]  r4:80d42c00
[    3.504710] [<804503ac>] (aspeed_kcs_probe) from [<804e69a8>] (platform_probe+0x54/0x9c)
[    3.512873]  r10:8093c994 r9:80b9b840 r8:00000001 r7:80d42c10 r6:80b6e7b0 r5:80b6e7b0
[    3.520712]  r4:80d42c10
[    3.523256] [<804e6954>] (platform_probe) from [<804e4534>] (really_probe+0x1c4/0x46c)
[    3.531220]  r5:00000000 r4:80d42c10
[    3.534810] [<804e4370>] (really_probe) from [<804e48b0>] (__driver_probe_device+0xd4/0x1bc)
[    3.543288]  r7:80d42c10 r6:80d42c10 r5:80bcb44c r4:80b6e7b0
[    3.548954] [<804e47dc>] (__driver_probe_device) from [<804e49d8>] (driver_probe_device+0x40/0xd8)
[    3.557954]  r9:80b9b840 r8:00000001 r7:80d42c10 r6:80cc7e84 r4:80bcb340
[    3.564658] [<804e4998>] (driver_probe_device) from [<804e4c08>] (__device_attach_driver+0xb8/0x148)
[    3.573831]  r9:80b9b840 r8:00000000 r7:80d42c10 r6:80cc7e84 r5:80b6e7b0 r4:00000001
[    3.581576] [<804e4b50>] (__device_attach_driver) from [<804e2670>] (bus_for_each_drv+0x90/0xe0)
[    3.590408]  r7:80b71484 r6:804e4b50 r5:80cc7e84 r4:00000000
[    3.596074] [<804e25e0>] (bus_for_each_drv) from [<804e4f64>] (__device_attach+0x104/0x18c)
[    3.604473]  r6:80d42c54 r5:00000001 r4:80d42c10
[    3.609101] [<804e4e60>] (__device_attach) from [<804e5394>] (device_initial_probe+0x1c/0x20)
[    3.617673]  r6:80d42c10 r5:80b71638 r4:80d4ca50
[    3.622299] [<804e5378>] (device_initial_probe) from [<804e2888>] (bus_probe_device+0x94/0x9c)
[    3.630944] [<804e27f4>] (bus_probe_device) from [<804e3f64>] (deferred_probe_work_func+0xa0/0xe8)
[    3.639948]  r7:80b71484 r6:80b71470 r5:80d42c10 r4:80d4ca50
[    3.645613] [<804e3ec4>] (deferred_probe_work_func) from [<801301ac>] (process_one_work+0x1b4/0x46c)
[    3.654797]  r10:80b71490 r9:00000000 r8:00000000 r7:80c85d00 r6:00000040 r5:80c045a0
[    3.662640]  r4:80b7148c r3:804e3ec4
[    3.666223] [<8012fff8>] (process_one_work) from [<8013066c>] (worker_thread+0x208/0x528)
[    3.674443]  r10:80c08a00 r9:00000088 r8:80b46840 r7:80c08a14 r6:80c045b4 r5:80c08a00
[    3.682284]  r4:80c045a0
[    3.684822] [<80130464>] (worker_thread) from [<80136f18>] (kthread+0x138/0x160)
[    3.692272]  r10:80c03860 r9:80cbde60 r8:80cc6000 r7:80c045a0 r6:80130464 r5:80c03840
[    3.700112]  r4:80c02b80
[    3.702658] [<80136de0>] (kthread) from [<80100130>] (ret_from_fork+0x14/0x24)
[    3.709921] Exception stack(0x80cc7fb0 to 0x80cc7ff8)
[    3.714999] 7fa0:                                     00000000 00000000 00000000 00000000
[    3.723192] 7fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    3.731378] 7fe0: 00000000 00000000 00000000 00000000 00000013 00000000
[    3.738012]  r10:00000000 r9:00000000 r8:00000000 r7:00000000 r6:00000000 r5:80136de0
[    3.745847]  r4:80c02b80 r3:00000000
[    3.749431] handlers:
[    3.751710] [<7d4a6f47>] aspeed_lpc_snoop_irq
[    3.756139] [<77501825>] aspeed_kcs_irq
[    3.760031] Disabling IRQ #32
[    3.763218] ast-kcs-bmc 1e78902c.kcs: Initialised channel 3 at 0xca2


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
