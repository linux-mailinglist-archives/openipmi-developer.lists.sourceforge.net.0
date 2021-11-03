Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDF9443A73
	for <lists+openipmi-developer@lfdr.de>; Wed,  3 Nov 2021 01:35:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mi4FW-0002d2-RN; Wed, 03 Nov 2021 00:35:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <zev@bewilderbeest.net>) id 1mi43k-0002SX-WC
 for openipmi-developer@lists.sourceforge.net; Wed, 03 Nov 2021 00:23:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tVlgFXI0uPFyNC4CumLg72oJb9w7cX3XZjH+2Q1ZiZk=; b=WB8ASlvGtFP/NSwFnSrkx8DutU
 CHx3ZjMMTt7RzjHj2qdOI3M3NasPYJnqk2MhtcC2hpMl4GBnSskBZaMO9mkdGlU9VxB59N91Izlob
 j6pnKc4N3cMr6kGkmBbIUtN2s1yh0ju9u3yckAEZWQ3n1GrR9pZJU504jQUn0Qr+rkog=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tVlgFXI0uPFyNC4CumLg72oJb9w7cX3XZjH+2Q1ZiZk=; b=hgAr3aKyzqG0CrRDupLlpFdbpQ
 TA5u4GInEdqJCpg/EDNgh1ceKNslOex8yHulEor3g+UEEAH7UreFgWlT06p1PqB/sSP7//qciy9gj
 V4ZXObxJvTr/iPaXhH3HNGO1TUnF04yaZ1tqgUuHUx+Kjk1isR1IXn+F8rPjJ9pWYars=;
Received: from thorn.bewilderbeest.net ([71.19.156.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mi43h-0002Jh-HQ
 for openipmi-developer@lists.sourceforge.net; Wed, 03 Nov 2021 00:23:20 +0000
Received: from hatter.bewilderbeest.net (97-113-240-219.tukw.qwest.net
 [97.113.240.219])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: zev)
 by thorn.bewilderbeest.net (Postfix) with ESMTPSA id 695C52A8;
 Tue,  2 Nov 2021 17:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bewilderbeest.net;
 s=thorn; t=1635897891;
 bh=tVlgFXI0uPFyNC4CumLg72oJb9w7cX3XZjH+2Q1ZiZk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Aj5k2gN8SQI+14HbRXLSkUCc2hOM6hHmAnhWoNXdp++H0fNqUeqjXchRuFet/6RfY
 qeCilarqQtPmUf1dj1PASQy48pq+7m7HKnoGd9j9kc6TI7iAdB9v2je1rF6PMjzO/M
 Nd0U3LCX8nOKKMnqqrHgbnQSwoQX0bAeEQ4YmL7k=
Date: Tue, 2 Nov 2021 17:04:46 -0700
From: Zev Weiss <zev@bewilderbeest.net>
To: Joel Stanley <joel@jms.id.au>
Message-ID: <YYHSHoELvKRI4Zh1@hatter.bewilderbeest.net>
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <CACPK8XfBi+jY5ftLqsEVXHe01SQBNpTSwo+WtXN3=YUQnXACtw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPK8XfBi+jY5ftLqsEVXHe01SQBNpTSwo+WtXN3=YUQnXACtw@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Nov 01, 2021 at 04:36:38PM PDT, Joel Stanley wrote:
 >On Mon, 1 Nov 2021 at 23:18, <jae.hyun.yoo@intel.com> wrote: >> >> From:
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com> >> >> Hello all, >> >> [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: bewilderbeest.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mi43h-0002Jh-HQ
X-Mailman-Approved-At: Wed, 03 Nov 2021 00:35:29 +0000
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
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Corey Minyard <minyard@acm.org>,
 Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
 Jae Hyun Yoo <jae.hyun.yoo@intel.com>, Cedric Le Goater <clg@kaod.org>,
 openipmi-developer@lists.sourceforge.net,
 Haiyue Wang <haiyue.wang@linux.intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Nov 01, 2021 at 04:36:38PM PDT, Joel Stanley wrote:
>On Mon, 1 Nov 2021 at 23:18, <jae.hyun.yoo@intel.com> wrote:
>>
>> From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
>>
>> Hello all,
>>
>> This series is for appliying below fix to all Aspped LPC sub drivers.
>> https://lore.kernel.org/all/20201208091748.1920-1-wangzhiqiang.bj@bytedance.com/
>>
>> An LPC sub driver can be enabled without using the lpc-ctrl driver or it
>> can be registered ahead of lpc-ctrl depends on each system configuration and
>> this difference introduces that LPC can be enabled without heart beating of
>> LCLK so it causes improper handling on host interrupts when the host sends
>> interrupts in that time frame. Then kernel eventually forcibly disables the
>> interrupt with dumping stack and printing a 'nobody cared this irq' message
>> out.
>>
>> To prevent this issue, all LPC sub drivers should enable LCLK individually
>> so this patch adds clock control logic into the remaining Aspeed LPC sub
>> drivers.
>
>Thanks for sending this out!
>
>This will resolve a few of the issues we have in the issue tracker:
>
>https://github.com/openbmc/linux/issues/210
>https://github.com/openbmc/linux/issues/130
>
>The patches look good to me. I think you've just missed Corey's PR for
>v5.16, but I will stick them in the openbmc tree once they've had a
>review.
>

Hi Jae,

I tried this series out on the same in-progress OpenBMC port from issue 
number 210 linked above and am still seeing problems (dmesg pasted 
below).

I cherry-picked commit f9241fe8b9652 ("ARM: dts: aspeed: Add uart 
routing to device tree") from linux-next to allow the first patch to 
apply cleanly; is there anything else I might be missing that'd be 
needed to test the series properly?


Thanks,
Zev

[    0.417811] irq 32: nobody cared (try booting with the "irqpoll" option)
[    0.417858] CPU: 0 PID: 1 Comm: swapper Not tainted 5.14.11-aee45db-dirty-4b119be-hacked #1
[    0.417899] Hardware name: Generic DT based system
[    0.417922] Backtrace: 
[    0.417958] [<807e64e4>] (dump_backtrace) from [<807e6738>] (show_stack+0x20/0x24)
[    0.418052]  r7:00000000 r6:00000008 r5:00000000 r4:80902b50
[    0.418074] [<807e6718>] (show_stack) from [<807f09d0>] (dump_stack+0x28/0x30)
[    0.418133] [<807f09a8>] (dump_stack) from [<807e76c0>] (__report_bad_irq+0x40/0xc0)
[    0.418189]  r5:00000000 r4:80d43900
[    0.418211] [<807e7680>] (__report_bad_irq) from [<80159c10>] (note_interrupt+0x284/0x2dc)
[    0.418286]  r9:80cbc000 r8:00000020 r7:00000000 r6:00000008 r5:00000000 r4:80d43900
[    0.418307] [<8015998c>] (note_interrupt) from [<801569d4>] (handle_irq_event+0xb4/0xc0)
[    0.418366]  r10:00000000 r9:80cbc000 r8:80d439a8 r7:00000000 r6:00000008 r5:00000000
[    0.418390]  r4:80d43900 r3:00000000
[    0.418408] [<80156920>] (handle_irq_event) from [<8015acd0>] (handle_level_irq+0xac/0x180)
[    0.418464]  r5:00000000 r4:80d43900
[    0.418484] [<8015ac24>] (handle_level_irq) from [<80155fa4>] (handle_domain_irq+0x60/0x7c)
[    0.418539]  r5:00000000 r4:80b8e7c8
[    0.418558] [<80155f44>] (handle_domain_irq) from [<8010121c>] (avic_handle_irq+0x64/0x6c)
[    0.418618]  r7:80cbdc94 r6:ffffffff r5:80cbdc60 r4:80c02420
[    0.418639] [<801011b8>] (avic_handle_irq) from [<80100aec>] (__irq_svc+0x6c/0x90)
[    0.418685] Exception stack(0x80cbdc60 to 0x80cbdca8)
[    0.418722] dc60: 00000000 00000000 00000000 00000000 80d43900 00000000 8529d180 00000020
[    0.418756] dc80: 80d439a8 60000053 00000000 80cbdcdc 00000000 80cbdcb0 8015a520 80157d4c
[    0.418781] dca0: 40000053 ffffffff
[    0.418807]  r5:40000053 r4:80157d4c
[    0.418824] [<80157a0c>] (__setup_irq) from [<8015844c>] (request_threaded_irq+0xe8/0x16c)
[    0.418887]  r9:852acb60 r8:00000020 r7:80d43910 r6:80d43900 r5:00000000 r4:8529d180
[    0.418908] [<80158364>] (request_threaded_irq) from [<8015bd80>] (devm_request_threaded_irq+0x78/0xd0)
[    0.418979]  r10:8092ed9c r9:00000000 r8:852acb60 r7:80d42410 r6:00000020 r5:8045ff98
[    0.419004]  r4:8529d760 r3:00000080
[    0.419021] [<8015bd08>] (devm_request_threaded_irq) from [<8046049c>] (aspeed_lpc_snoop_probe+0x110/0x2e0)
[    0.419116]  r10:80bab000 r9:80d42410 r8:8529d140 r7:00000000 r6:80d42400 r5:852acb60
[    0.419138]  r4:00000000
[    0.419155] [<8046038c>] (aspeed_lpc_snoop_probe) from [<804e6980>] (platform_probe+0x54/0x9c)
[    0.419237]  r9:80983b68 r8:00000000 r7:80d42410 r6:80b6f3dc r5:80b6f3dc r4:80d42410
[    0.419259] [<804e692c>] (platform_probe) from [<804e450c>] (really_probe+0x1c4/0x46c)
[    0.419309]  r5:00000000 r4:80d42410
[    0.419329] [<804e4348>] (really_probe) from [<804e4888>] (__driver_probe_device+0xd4/0x1bc)
[    0.419381]  r7:80d42410 r6:80d42410 r5:80bcb44c r4:80b6f3dc
[    0.419401] [<804e47b4>] (__driver_probe_device) from [<804e49b0>] (driver_probe_device+0x40/0xd8)
[    0.419460]  r9:80983b68 r8:00000000 r7:80d42410 r6:80b6f3dc r4:80bcb340
[    0.419480] [<804e4970>] (driver_probe_device) from [<804e4d14>] (__driver_attach+0xa4/0x1c8)
[    0.419538]  r9:80983b68 r8:80a2c838 r7:80b71638 r6:80b6f3dc r5:80d42454 r4:80d42410
[    0.419556] [<804e4c70>] (__driver_attach) from [<804e2124>] (bus_for_each_dev+0x84/0xd0)
[    0.419608]  r7:80b71638 r6:804e4c70 r5:80b6f3dc r4:00000000
[    0.419628] [<804e20a0>] (bus_for_each_dev) from [<804e5440>] (driver_attach+0x28/0x30)
[    0.419681]  r6:00000000 r5:852abd20 r4:80b6f3dc
[    0.419700] [<804e5418>] (driver_attach) from [<804e2ac0>] (bus_add_driver+0x114/0x200)
[    0.419745] [<804e29ac>] (bus_add_driver) from [<804e5adc>] (driver_register+0x98/0x128)
[    0.419798]  r7:00000000 r6:00000007 r5:00000000 r4:80b6f3dc
[    0.419818] [<804e5a44>] (driver_register) from [<804e7c2c>] (__platform_driver_register+0x2c/0x34)
[    0.419874]  r5:80c03e40 r4:80a1997c
[    0.419890] [<804e7c00>] (__platform_driver_register) from [<80a1999c>] (aspeed_lpc_snoop_driver_init+0x20/0x28)
[    0.419951] [<80a1997c>] (aspeed_lpc_snoop_driver_init) from [<80a01408>] (do_one_initcall+0x64/0x144)
[    0.420024] [<80a013a4>] (do_one_initcall) from [<80a016e4>] (kernel_init_freeable+0x198/0x218)
[    0.420086]  r7:80a2c858 r6:00000007 r5:80c03e40 r4:80a4c8f0
[    0.420108] [<80a0154c>] (kernel_init_freeable) from [<807f0c28>] (kernel_init+0x20/0x134)
[    0.420172]  r10:00000000 r9:00000000 r8:00000000 r7:00000000 r6:00000000 r5:807f0c08
[    0.420194]  r4:00000000
[    0.420211] [<807f0c08>] (kernel_init) from [<80100130>] (ret_from_fork+0x14/0x24)
[    0.420259] Exception stack(0x80cbdfb0 to 0x80cbdff8)
[    0.420292] dfa0:                                     00000000 00000000 00000000 00000000
[    0.420326] dfc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    0.420356] dfe0: 00000000 00000000 00000000 00000000 00000013 00000000
[    0.420382]  r5:807f0c08 r4:00000000
[    0.420400] handlers:
[    0.420417] [<(ptrval)>] aspeed_lpc_snoop_irq
[    0.420482] Disabling IRQ #32
[    0.638932] Serial: 8250/16550 driver, 6 ports, IRQ sharing enabled
[    0.643436] 1e787000.serial: ttyS5 at MMIO 0x1e787000 (irq = 32, base_baud = 1546875) is a 8250
[    0.645555] 1e784000.serial: ttyS4 at MMIO 0x1e784000 (irq = 31, base_baud = 1500000) is a 16550A
[    2.010064] Freeing initrd memory: 1072K
[    2.232890] printk: console [ttyS4] enabled
[    2.239349] timeriomem_rng 1e6e2078.hwrng: 32bits from 0x6961cb32 @ 1us
[    2.262322] loop: module loaded
[    2.284029] aspeed-smc 1e620000.spi: Using 100 MHz SPI frequency
[    2.290471] aspeed-smc 1e620000.spi: mx66l51235f (65536 Kbytes)
[    2.296451] aspeed-smc 1e620000.spi: CE0 window [ 0x20000000 - 0x24000000 ] 64MB
[    2.303977] aspeed-smc 1e620000.spi: CE1 window [ 0x24000000 - 0x2a000000 ] 96MB
[    2.311486] aspeed-smc 1e620000.spi: read control register: 203c0641
[    2.542638] 5 fixed-partitions partitions found on MTD device bmc
[    2.548875] Creating 5 MTD partitions on "bmc":
[    2.553458] 0x000000000000-0x0000000e0000 : "u-boot"
[    2.561247] 0x0000000e0000-0x000000100000 : "u-boot-env"
[    2.569559] 0x000000100000-0x000000a00000 : "kernel"
[    2.577301] 0x000000a00000-0x000002a00000 : "rofs"
[    2.585054] 0x000002a00000-0x000004000000 : "rwfs"
[    2.628232] libphy: Fixed MDIO Bus: probed
[    2.634437] ftgmac100 1e660000.ethernet: Read MAC address d0:50:99:f4:1e:18 from chip
[    2.651029] libphy: ftgmac100_mdio: probed
[    2.656253] RTL8211E Gigabit Ethernet 1e660000.ethernet--1:00: attached PHY driver (mii_bus:phy_addr=1e660000.ethernet--1:00, irq=POLL)
[    2.669669] ftgmac100 1e660000.ethernet eth0: irq 20, mapped at 1ecc0872
[    2.680442] aspeed_vhub 1e6a0000.usb-vhub: Initialized virtual hub in USB2 mode
[    2.688464] Mass Storage Function, version: 2009/09/11
[    2.693666] LUN: removable file: (no medium)
[    2.698021] no file given for LUN0
[    2.701605] g_mass_storage 1e6a0000.usb-vhub:p1: failed to start g_mass_storage: -22
[    2.710113] i2c /dev entries driver
[    2.715459] aspeed-i2c-bus 1e78a040.i2c-bus: i2c bus 0 registered, irq 33
[    2.724045] aspeed-i2c-bus 1e78a080.i2c-bus: i2c bus 1 registered, irq 34
[    2.733972] aspeed-i2c-bus 1e78a0c0.i2c-bus: i2c bus 2 registered, irq 35
[    2.742252] aspeed-i2c-bus 1e78a100.i2c-bus: i2c bus 3 registered, irq 36
[    2.750599] aspeed-i2c-bus 1e78a140.i2c-bus: i2c bus 4 registered, irq 37
[    2.759769] aspeed-i2c-bus 1e78a180.i2c-bus: i2c bus 5 registered, irq 38
[    2.767994] aspeed-i2c-bus 1e78a1c0.i2c-bus: i2c bus 6 registered, irq 39
[    2.777783] at24 7-0050: 16384 byte 24c128 EEPROM, writable, 16 bytes/write
[    2.785096] aspeed-i2c-bus 1e78a300.i2c-bus: i2c bus 7 registered, irq 40
[    2.793373] aspeed-i2c-bus 1e78a340.i2c-bus: i2c bus 8 registered, irq 41
[    2.801709] aspeed-i2c-bus 1e78a380.i2c-bus: i2c bus 9 registered, irq 42
[    2.814947] at24 14-0050: 2048 byte 24c16 EEPROM, read-only
[    2.820929] i2c i2c-2: Added multiplexed i2c bus 14
[    2.826513] i2c i2c-2: Added multiplexed i2c bus 15
[    2.832192] i2c i2c-2: Added multiplexed i2c bus 16
[    2.837821] i2c i2c-2: Added multiplexed i2c bus 17
[    2.842944] pca954x 2-0070: registered 4 multiplexed busses for I2C switch pca9545
[    2.852110] i2c i2c-5: Added multiplexed i2c bus 18
[    2.857847] i2c i2c-5: Added multiplexed i2c bus 19
[    2.863603] i2c i2c-5: Added multiplexed i2c bus 20
[    2.869410] i2c i2c-5: Added multiplexed i2c bus 21
[    2.874378] pca954x 5-0073: registered 4 multiplexed busses for I2C switch pca9545
[    2.884631] Driver for 1-wire Dallas network protocol.
[    3.009394] NET: Registered PF_INET6 protocol family
[    3.017326] Segment Routing with IPv6
[    3.021945] NET: Registered PF_PACKET protocol family
[    3.027562] 8021q: 802.1Q VLAN Support v1.8
[    3.263306] irq 32: nobody cared (try booting with the "irqpoll" option)
[    3.270074] CPU: 0 PID: 5 Comm: kworker/u2:0 Not tainted 5.14.11-aee45db-dirty-4b119be-hacked #1
[    3.278889] Hardware name: Generic DT based system
[    3.283699] Workqueue: events_unbound deferred_probe_work_func
[    3.289601] Backtrace: 
[    3.292079] [<807e64e4>] (dump_backtrace) from [<807e6738>] (show_stack+0x20/0x24)
[    3.299716]  r7:00000000 r6:00000008 r5:00000000 r4:80902b50
[    3.305382] [<807e6718>] (show_stack) from [<807f09d0>] (dump_stack+0x28/0x30)
[    3.312646] [<807f09a8>] (dump_stack) from [<807e76c0>] (__report_bad_irq+0x40/0xc0)
[    3.320433]  r5:00000000 r4:80d43900
[    3.324022] [<807e7680>] (__report_bad_irq) from [<80159c10>] (note_interrupt+0x284/0x2dc)
[    3.332349]  r9:80cc6000 r8:00000020 r7:00000000 r6:00000008 r5:00000000 r4:80d43900
[    3.340101] [<8015998c>] (note_interrupt) from [<801569d4>] (handle_irq_event+0xb4/0xc0)
[    3.348242]  r10:00000000 r9:80cc6000 r8:80d439a8 r7:00000000 r6:00000008 r5:00000000
[    3.356077]  r4:80d43900 r3:00000400
[    3.359660] [<80156920>] (handle_irq_event) from [<8015acd0>] (handle_level_irq+0xac/0x180)
[    3.368047]  r5:00000000 r4:80d43900
[    3.371629] [<8015ac24>] (handle_level_irq) from [<80155fa4>] (handle_domain_irq+0x60/0x7c)
[    3.380024]  r5:00000000 r4:80b8e7c8
[    3.383607] [<80155f44>] (handle_domain_irq) from [<8010121c>] (avic_handle_irq+0x64/0x6c)
[    3.391919]  r7:80cc7c84 r6:ffffffff r5:80cc7c50 r4:80c02420
[    3.397586] [<801011b8>] (avic_handle_irq) from [<80100aec>] (__irq_svc+0x6c/0x90)
[    3.405187] Exception stack(0x80cc7c50 to 0x80cc7c98)
[    3.410262] 7c40:                                     00000000 00000000 00000000 00000000
[    3.418458] 7c60: 80d43900 8529d180 85120d00 00000020 80d439a8 a0000013 00000000 80cc7ccc
[    3.426647] 7c80: 00000400 80cc7ca0 8015a520 80157d4c 40000013 ffffffff
[    3.433271]  r5:40000013 r4:80157d4c
[    3.436854] [<80157a0c>] (__setup_irq) from [<8015844c>] (request_threaded_irq+0xe8/0x16c)
[    3.445171]  r9:8505fa20 r8:00000020 r7:80d43910 r6:80d43900 r5:00000000 r4:85120d00
[    3.452922] [<80158364>] (request_threaded_irq) from [<8015bd80>] (devm_request_threaded_irq+0x78/0xd0)
[    3.462366]  r10:80d4ea20 r9:00000000 r8:8505fa20 r7:80d42c10 r6:00000020 r5:8044fd64
[    3.470208]  r4:851208e0 r3:00000080
[    3.473792] [<8015bd08>] (devm_request_threaded_irq) from [<80450644>] (aspeed_kcs_probe+0x298/0x650)
[    3.483072]  r10:8505fa54 r9:80833650 r8:ffffffea r7:80d42c10 r6:00000020 r5:8505fa20
[    3.490912]  r4:80d42c00
[    3.493456] [<804503ac>] (aspeed_kcs_probe) from [<804e6980>] (platform_probe+0x54/0x9c)
[    3.501617]  r10:8093c994 r9:80b9b840 r8:00000001 r7:80d42c10 r6:80b6e7b0 r5:80b6e7b0
[    3.509458]  r4:80d42c10
[    3.512003] [<804e692c>] (platform_probe) from [<804e450c>] (really_probe+0x1c4/0x46c)
[    3.519957]  r5:00000000 r4:80d42c10
[    3.523538] [<804e4348>] (really_probe) from [<804e4888>] (__driver_probe_device+0xd4/0x1bc)
[    3.532017]  r7:80d42c10 r6:80d42c10 r5:80bcb44c r4:80b6e7b0
[    3.537682] [<804e47b4>] (__driver_probe_device) from [<804e49b0>] (driver_probe_device+0x40/0xd8)
[    3.546683]  r9:80b9b840 r8:00000001 r7:80d42c10 r6:80cc7e84 r4:80bcb340
[    3.553386] [<804e4970>] (driver_probe_device) from [<804e4be0>] (__device_attach_driver+0xb8/0x148)
[    3.562568]  r9:80b9b840 r8:00000000 r7:80d42c10 r6:80cc7e84 r5:80b6e7b0 r4:00000001
[    3.570313] [<804e4b28>] (__device_attach_driver) from [<804e2648>] (bus_for_each_drv+0x90/0xe0)
[    3.579145]  r7:80b71484 r6:804e4b28 r5:80cc7e84 r4:00000000
[    3.584812] [<804e25b8>] (bus_for_each_drv) from [<804e4f3c>] (__device_attach+0x104/0x18c)
[    3.593201]  r6:80d42c54 r5:00000001 r4:80d42c10
[    3.597828] [<804e4e38>] (__device_attach) from [<804e536c>] (device_initial_probe+0x1c/0x20)
[    3.606390]  r6:80d42c10 r5:80b71638 r4:80d4ca50
[    3.611019] [<804e5350>] (device_initial_probe) from [<804e2860>] (bus_probe_device+0x94/0x9c)
[    3.619662] [<804e27cc>] (bus_probe_device) from [<804e3f3c>] (deferred_probe_work_func+0xa0/0xe8)
[    3.628657]  r7:80b71484 r6:80b71470 r5:80d42c10 r4:80d4ca50
[    3.634324] [<804e3e9c>] (deferred_probe_work_func) from [<801301ac>] (process_one_work+0x1b4/0x46c)
[    3.643506]  r10:80b71490 r9:00000000 r8:00000000 r7:80c85d00 r6:00000040 r5:80c045a0
[    3.651342]  r4:80b7148c r3:804e3e9c
[    3.654925] [<8012fff8>] (process_one_work) from [<8013066c>] (worker_thread+0x208/0x528)
[    3.663145]  r10:80c08a00 r9:00000088 r8:80b46840 r7:80c08a14 r6:80c045b4 r5:80c08a00
[    3.670979]  r4:80c045a0
[    3.673524] [<80130464>] (worker_thread) from [<80136f18>] (kthread+0x138/0x160)
[    3.680982]  r10:80c03860 r9:80cbde60 r8:80cc6000 r7:80c045a0 r6:80130464 r5:80c03840
[    3.688822]  r4:80c02b80
[    3.691369] [<80136de0>] (kthread) from [<80100130>] (ret_from_fork+0x14/0x24)
[    3.698633] Exception stack(0x80cc7fb0 to 0x80cc7ff8)
[    3.703707] 7fa0:                                     00000000 00000000 00000000 00000000
[    3.711904] 7fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    3.720091] 7fe0: 00000000 00000000 00000000 00000000 00000013 00000000
[    3.726722]  r10:00000000 r9:00000000 r8:00000000 r7:00000000 r6:00000000 r5:80136de0
[    3.734559]  r4:80c02b80 r3:00000000
[    3.738142] handlers:
[    3.740420] [<8337d287>] aspeed_lpc_snoop_irq
[    3.744851] [<d8d6aeaf>] aspeed_kcs_irq
[    3.748741] Disabling IRQ #32
[    3.752597] ast-kcs-bmc 1e78902c.kcs: Initialised raw client for channel 3
[    3.760184] ast-kcs-bmc 1e78902c.kcs: Initialised IPMI client for channel 3
[    3.767235] ast-kcs-bmc 1e78902c.kcs: Initialised channel 3 at 0xca2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
