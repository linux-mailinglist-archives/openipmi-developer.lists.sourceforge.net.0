Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5AF59CD28
	for <lists+openipmi-developer@lfdr.de>; Tue, 23 Aug 2022 02:23:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oQHh3-0003jX-Uv;
	Tue, 23 Aug 2022 00:22:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <joel.stan@gmail.com>) id 1oQHh3-0003jR-84
 for openipmi-developer@lists.sourceforge.net;
 Tue, 23 Aug 2022 00:22:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nNby+4AsStJg1pa9lu4cTHlV8sbD7whkWK8yDLBtezw=; b=JSOy2so9VRE6ipxVyRwFdKXZuo
 Y1pxMa0aWrRAlbqpNngmnAnFETJokeJWdddrYNFNhAnHlOD9Ufk0YCj4BGavaQVAF2Q/an+/RflXR
 dQAjshOLAJT5pmGS0pCk/NVJLbJiVwS6F33Q0bNsrCB9wg5/gDYIG0++Uq/tpyBnsl8s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nNby+4AsStJg1pa9lu4cTHlV8sbD7whkWK8yDLBtezw=; b=ktd2mD9VYTaCYRc+ZyP8SvkivV
 yXOqqrFHBxQn9Im33hMgM8NTdPLqn5IyDKQZld3/MndXldVDYKmm7y5TiVIYiH7r8D8orGsghp+0X
 F6nDWAQY7tPeZ9JTXmi1mw8DYhrWgjeEcc3H/iNYwsuKGZxYIFjZFqR4kl+EZFsBxLhs=;
Received: from mail-wr1-f53.google.com ([209.85.221.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oQHgz-00Des5-Du for openipmi-developer@lists.sourceforge.net;
 Tue, 23 Aug 2022 00:22:57 +0000
Received: by mail-wr1-f53.google.com with SMTP id n7so15109166wrv.4
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 22 Aug 2022 17:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc;
 bh=nNby+4AsStJg1pa9lu4cTHlV8sbD7whkWK8yDLBtezw=;
 b=MQcWGSiBMMTtQE2GPz2XbhcXsSuLBkLtY+yT50NkCKsbSZn7bJ2MMcqFcP0eqIHT8A
 3aCLwQcySmRjqbgzHNCMkB19+0BxDjgJ89DJfia/lb+pcHVr0ydhunwKbFTE3/ZvCruf
 2GOA8UPY1ttlodvuSAPPxNsRYZGhUfZNbmgp8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=nNby+4AsStJg1pa9lu4cTHlV8sbD7whkWK8yDLBtezw=;
 b=qsznGxSX6mGa0ecRokcPQLQFIgIQBwL51JhxpLROoqkHVRLLTnZdudFS5W/qUDPSoR
 rZ53FARQfqz/BkamoF6Zta36X0sEkdR8V8N9KfH3fxPqGgKce+DWkm/9pSf2kei/MB0U
 Z8kvfFnPF4+lDFOaTSYcxojKKeYSXSjBC42YSfD945t+U+52Axf6rWtg7A/m9OFCEUBK
 Ry7EhhvWJC/O9zOY2ktf87C2TYLjICPbb/ocuz3urc4UI5xY0qdX43ZqKjk149JUXEgW
 bPU/afcBTyOvWjVZKt89GSdUozDbYw5H1OjyEz8zPbCMT+cjbcyFPfruLZ0eK8ulfGtr
 427g==
X-Gm-Message-State: ACgBeo3NxqQeGyRSIqtQah2WeIIU+2AeRwoDIJ/pl+SUtODvuNAyAWWV
 e+dXlzrU0mPGSJRMWY8HVhplHTPtI++/4FiZAcE=
X-Google-Smtp-Source: AA6agR5xlNZvlnHVYSrzV0GM7K98tfBm2jwoluUDZ8ZQtsT2RwqT7Kar1wZ3pTaTjBB32XKoNfTsAFG66ZsHy8xWhWI=
X-Received: by 2002:a5d:47ab:0:b0:223:60ee:6c12 with SMTP id
 11-20020a5d47ab000000b0022360ee6c12mr11764837wrb.315.1661214167010; Mon, 22
 Aug 2022 17:22:47 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1661094034.git.i.kononenko@yadro.com>
In-Reply-To: <cover.1661094034.git.i.kononenko@yadro.com>
From: Joel Stanley <joel@jms.id.au>
Date: Tue, 23 Aug 2022 00:22:34 +0000
Message-ID: <CACPK8XfHAY_+7i_mJYSO9C2K2+mfKsFHf-8AcgK4VjOnEUEVQg@mail.gmail.com>
To: Igor Kononenko <i.kononenko@yadro.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, 21 Aug 2022 at 16:07,
 Igor Kononenko <i.kononenko@yadro.com>
 wrote: > > The bmc might be rebooted while the host is still reachable and
 the host > might send requests through configured lpc-kc [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.53 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.53 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oQHgz-00Des5-Du
Subject: Re: [Openipmi-developer] [PATCH 0/3] aspeed:lpc: Fix lpc-snoop
 probe exception
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
Cc: Corey Minyard <minyard@acm.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sun, 21 Aug 2022 at 16:07, Igor Kononenko <i.kononenko@yadro.com> wrote:
>
> The bmc might be rebooted while the host is still reachable and the host
> might send requests through configured lpc-kcs channels in same time.
> That leads to raise lpc-snoop/lpc-kcs interrupts that haven't adjusted IRQ
> handlers yet on next early kernel boot, because on the aspeed-chip reboot
> might keep lpc-registers on a unclean state that is configured on the last
> boot.

Thanks for the bug report and the patches Igor.

When you resend then please add a Fixes: line to help ensure the
patches get backported.

Cheers,

Joel


>
> The described way might raise the next exception:
> ```
> [    1.360110] irq 35: nobody cared (try booting with the "irqpoll" option)
> [    1.360145] CPU: 0 PID: 1 Comm: swapper Not tainted 5.4.43-c109de3-24cc5b6 #1
> [    1.360158] Hardware name: Generic DT based system
> [    1.360168] Backtrace:
> [    1.360228] [<80107f5c>] (dump_backtrace) from [<80108184>] (show_stack+0x20/0x24)
> [    1.360250]  r7:00000023 r6:00000000 r5:00000000 r4:9d12d560
> [    1.360283] [<80108164>] (show_stack) from [<8084ae54>] (dump_stack+0x20/0x28)
> [    1.360316] [<8084ae34>] (dump_stack) from [<80156790>] (__report_bad_irq+0x40/0xc0)
> [    1.360344] [<80156750>] (__report_bad_irq) from [<801566c0>] (note_interrupt+0x238/0x290)
> [    1.360366]  r9:9d0ae000 r8:9d00c600 r7:00000023 r6:00000000 r5:00000000 r4:9d12d560
> [    1.360408] [<80156488>] (note_interrupt) from [<80153594>] (handle_irq_event+0xb4/0xc4)
> [    1.360429]  r10:00000000 r9:9d0ae000 r8:9d00c600 r7:00000001 r6:00000000 r5:00000000
> [    1.360440]  r4:9d12d560 r3:00000000
> [    1.360466] [<801534e0>] (handle_irq_event) from [<8015788c>] (handle_level_irq+0xac/0x180)
> [    1.360480]  r5:80c7d35c r4:9d12d560
> [    1.360503] [<801577e0>] (handle_level_irq) from [<80152a5c>] (__handle_domain_irq+0x6c/0xc8)
> [    1.360519]  r5:80c7d35c r4:9d12d560
> [    1.360545] [<801529f0>] (__handle_domain_irq) from [<801021cc>] (avic_handle_irq+0x68/0x70)
> [    1.360568]  r9:9d0ae000 r8:9d12d608 r7:9d0afc84 r6:ffffffff r5:9d0afc50 r4:9d002380
> [    1.360587] [<80102164>] (avic_handle_irq) from [<80101a6c>] (__irq_svc+0x6c/0x90)
> [    1.360603] Exception stack(0x9d0afc50 to 0x9d0afc98)
> [    1.360620] fc40:                                     00000000 00000100 00000000 00000000
> [    1.360640] fc60: 9d12d560 98bbd0c0 00000000 00000023 9d12d608 60000053 00000000 9d0afcd4
> [    1.360657] fc80: 9d0afc80 9d0afca0 801570ec 80154cdc 40000053 ffffffff
> [    1.360670]  r5:40000053 r4:80154cdc
> [    1.360693] [<801549e0>] (__setup_irq) from [<801555e4>] (request_threaded_irq+0xdc/0x15c)
> [    1.360715]  r9:98bbb340 r8:00000023 r7:9d12d570 r6:9d12d560 r5:00000000 r4:98bbd0c0
> [    1.360741] [<80155508>] (request_threaded_irq) from [<801589d8>] (devm_request_threaded_irq+0x70/0xc4)
> [    1.360762]  r10:80a7353c r9:00000000 r8:98bbb340 r7:9d130e10 r6:00000023 r5:804f4a70
> [    1.360774]  r4:98bbd020 r3:00000080
> [    1.360800] [<80158968>] (devm_request_threaded_irq) from [<804f4ebc>] (aspeed_lpc_snoop_probe+0x100/0x2ac)
> [    1.360821]  r10:00000000 r9:9d130e10 r8:98bbd040 r7:00000000 r6:9d130e00 r5:98bbb340
> [    1.360830]  r4:00000000
> [    1.360851] [<804f4dbc>] (aspeed_lpc_snoop_probe) from [<8056a5c4>] (platform_drv_probe+0x44/0x80)
> [    1.360873]  r9:80c5ef90 r8:00000000 r7:80cc2938 r6:00000000 r5:80c5ef90 r4:9d130e10
> [    1.360910] [<8056a580>] (platform_drv_probe) from [<80568420>] (really_probe+0x26c/0x498)
> [    1.360924]  r5:80cc282c r4:9d130e10
> [    1.360949] [<805681b4>] (really_probe) from [<80568c28>] (driver_probe_device+0x138/0x184)
> [    1.360970]  r10:80b0050c r9:80adadb0 r8:00000007 r7:80c5ef90 r6:9d130e10 r5:00000000
> [    1.360981]  r4:80c5ef90
> [    1.361004] [<80568af0>] (driver_probe_device) from [<80568fe4>] (device_driver_attach+0xb8/0xc0)
> [    1.361020]  r7:80c5ef90 r6:9d130e54 r5:00000000 r4:9d130e10
> [    1.361046] [<80568f2c>] (device_driver_attach) from [<80569070>] (__driver_attach+0x84/0x16c)
> [    1.361063]  r7:80c61128 r6:9d130e10 r5:00000001 r4:80c5ef90
> [    1.361088] [<80568fec>] (__driver_attach) from [<80566068>] (bus_for_each_dev+0x84/0xcc)
> [    1.361106]  r7:80c61128 r6:80568fec r5:80c5ef90 r4:00000000
> [    1.361130] [<80565fe4>] (bus_for_each_dev) from [<80569180>] (driver_attach+0x28/0x30)
> [    1.361147]  r6:00000000 r5:9d1a3d40 r4:80c5ef90
> [    1.361169] [<80569158>] (driver_attach) from [<80566a08>] (bus_add_driver+0x114/0x200)
> [    1.361195] [<805668f4>] (bus_add_driver) from [<80569814>] (driver_register+0x98/0x128)
> [    1.361214]  r7:00000000 r6:80ca0ca0 r5:00000000 r4:80c5ef90
> [    1.361241] [<8056977c>] (driver_register) from [<8056b528>] (__platform_driver_register+0x40/0x54)
> [    1.361256]  r5:000000b8 r4:80b2575c
> [    1.361294] [<8056b4e8>] (__platform_driver_register) from [<80b2577c>] (aspeed_lpc_snoop_driver_init+0x20/0x28)
> [    1.361331] [<80b2575c>] (aspeed_lpc_snoop_driver_init) from [<80b01318>] (do_one_initcall+0x84/0x184)
> [    1.361356] [<80b01294>] (do_one_initcall) from [<80b01540>] (kernel_init_freeable+0x128/0x1ec)
> [    1.361375]  r7:80b3f858 r6:80ca0ca0 r5:000000b8 r4:80b61914
> [    1.361412] [<80b01418>] (kernel_init_freeable) from [<80864060>] (kernel_init+0x18/0x11c)
> [    1.361435]  r10:00000000 r9:00000000 r8:00000000 r7:00000000 r6:00000000 r5:80864048
> [    1.361444]  r4:00000000
> [    1.361470] [<80864048>] (kernel_init) from [<801010e8>] (ret_from_fork+0x14/0x2c)
> [    1.361483] Exception stack(0x9d0affb0 to 0x9d0afff8)
> [    1.361500] ffa0:                                     00000000 00000000 00000000 00000000
> [    1.361518] ffc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
> [    1.361535] ffe0: 00000000 00000000 00000000 00000000 00000013 00000000
> [    1.361547]  r5:80864048 r4:00000000
> [    1.361555] handlers:
> [    1.361592] [<(ptrval)>] aspeed_lpc_snoop_irq
> [    1.361609] Disabling IRQ #35
>
> ```
>
> Main caught of that state is the lpc-snoop driver found on the same
> 1e789080 address and have same IRQ#35 as for lpc-kcs, and lpc-snoop
> registering earlier than lpc-kcs. So, on the lpc-snoop initialization
> the lpc-snoop IRQ will be registried for IRQ#35, but it will
> passthrough it for the LPC KCS handlers that is not registried yet.
>
> Summary we got the `nobody cared` warning about more 100.000 unhandled
> IRQ#35
>
> Steps to reproduce:
> * Turn-on BMC
> * Turn-on HOST
> * Run `watch 'ipmitool sensor'` on the host that is configured to pass
>   requests via kcs-channel(3,4)
> * Reboot BMC.
> * On the next BMC boot kernel(BMC) dmesg have exception mentioned above.
>
> The following patchset aims to fixup described issue.
>
> Igor Kononenko (3):
>   ipmi:kcs_bmc: Add cleanup regmap(interrupt-regs) on a shutdown.
>   drivers/misc: (aspeed-lpc-snoop): Add regmap cleanup on a shutdown.
>   drivers/misc: (aspeed-lpc-snoop): Fix platform_get_irq() error
>     checking
>
>  drivers/char/ipmi/kcs_bmc_aspeed.c    |  8 +++++
>  drivers/soc/aspeed/aspeed-lpc-snoop.c | 46 ++++++++++++++++++++++++++-
>  2 files changed, 53 insertions(+), 1 deletion(-)
>
> --
> 2.25.1
>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
