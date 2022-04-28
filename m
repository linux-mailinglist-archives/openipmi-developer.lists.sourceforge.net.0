Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D5951394C
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Apr 2022 18:00:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nk6ZF-0003hC-7w; Thu, 28 Apr 2022 16:00:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <elder@ieee.org>) id 1nk5Er-00024j-O9
 for openipmi-developer@lists.sourceforge.net; Thu, 28 Apr 2022 14:35:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bCT2JlxzOcDaE6ycYVbjB0p6hzfQxFS5OmPVl0XHT4A=; b=l5KVUxxGUcQt4I8NmXgXXyl16K
 E+iyWY8CFlFrwgbx25BVpwnxpXpQGf7dwtsWsuv8Jr5vBMy/PieG5dH4p5RD69Z1mCFodsub92nbi
 lsfrV98aYPEjuvv726fqO8grE5XdzN+LNfPzbFJ9kDiuuQ/16l6ypv9RpNOO92RsPEKw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bCT2JlxzOcDaE6ycYVbjB0p6hzfQxFS5OmPVl0XHT4A=; b=WDFLw/x/mfSxqu/Ryrs3fSG5OA
 XgfzkpYICODmBCQU6j4Yp9/FzStvYv0Dc8G4Ux593ryali1krkTx2u7KFG2VjwxlwAQYUN3TSUS31
 SluBse1dh2BXMtm7NzFMdaz4Z8YrXP3yopiF5UJIH+4pWN48ijw3PSmlxH5m8/QXC7rg=;
Received: from mail-il1-f182.google.com ([209.85.166.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nk5Ep-00086L-2N
 for openipmi-developer@lists.sourceforge.net; Thu, 28 Apr 2022 14:35:24 +0000
Received: by mail-il1-f182.google.com with SMTP id r11so2105825ila.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 28 Apr 2022 07:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ieee.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=bCT2JlxzOcDaE6ycYVbjB0p6hzfQxFS5OmPVl0XHT4A=;
 b=ByPVeKDwQRcuSB47O0Zefv/dFt5S0aRWMNs2oJF7maE4wXnsormuysnBE3KE+1D9p9
 PB3FB3BjkOR/97x+74MBqA5RA9WqHK53ukE6KnmiwNvHyxwXKz6iLxoZSM4bciItAhHz
 gddQYhhdQpsolBOdwDYZPGvNMFMyqb4ql/QD0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=bCT2JlxzOcDaE6ycYVbjB0p6hzfQxFS5OmPVl0XHT4A=;
 b=JRU3uJT9v1uBYx9rT5+c8h7ulF0UIid7NC0DVAUOpW36n8cOXgP0CqHfpbWwuNdNIP
 1GBXlYhZzfG+9sBQaMZBPamjEkEBuzg0cPfy+6F4oxneU7QizzLFEOuneL4Z8YFtS8RR
 b1hTBRWzmjyNiRAq5dGVIntkz+L/2TTgF4W4I4sx9IoNH/0HwMrjGIJhkWhPSVgJtfHH
 euiEtV5eFXdGzFn3wzMUFov/x58O76RJojs8dTxGX/2pXGe8xrlLqBMFBQFmr0e8h2Wl
 WtwC/Yl9/M+vpWCzjhWE4FCtSOElRbKI2u485FG6aH6CSAL2wivQNyxHMwpr+8ax/BCD
 r2ow==
X-Gm-Message-State: AOAM532IvBS4TsUP6RFSNWhq2xW/tgVuG76EGswon+I0vZFMqx80aGt/
 E8yDutq9lhr/EZK7CdU7t2txQM6OuGwfAa8+
X-Google-Smtp-Source: ABdhPJw448TngRonNTsTASYhGkruvfda4Cqi/x7py0vOs1UkbxiFSjNKZ9c5oG5pi/4oeINikW5dJA==
X-Received: by 2002:a92:cac3:0:b0:2c9:a265:4cab with SMTP id
 m3-20020a92cac3000000b002c9a2654cabmr13504351ilq.241.1651155203895; 
 Thu, 28 Apr 2022 07:13:23 -0700 (PDT)
Received: from [172.22.22.4] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58]) by smtp.googlemail.com with ESMTPSA id
 y21-20020a6bc415000000b00648da092c8esm4431ioa.14.2022.04.28.07.13.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 Apr 2022 07:13:23 -0700 (PDT)
Message-ID: <4cae140c-982a-6b9f-661c-4e0fdfa3297b@ieee.org>
Date: Thu, 28 Apr 2022 09:13:19 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>, akpm@linux-foundation.org,
 bhe@redhat.com, pmladek@suse.com, kexec@lists.infradead.org
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-22-gpiccoli@igalia.com>
In-Reply-To: <20220427224924.592546-22-gpiccoli@igalia.com>
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 4/27/22 5:49 PM, Guilherme G. Piccoli wrote: > This patch
 renames the panic_notifier_list to panic_pre_reboot_list; > the idea is that
 a subsequent patch will refactor the panic path > in order to [...] 
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.182 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.182 listed in wl.mailspike.net]
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
X-Headers-End: 1nk5Ep-00086L-2N
X-Mailman-Approved-At: Thu, 28 Apr 2022 16:00:31 +0000
Subject: Re: [Openipmi-developer] [PATCH 21/30] panic: Introduce the panic
 pre-reboot notifier list
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
From: Alex Elder via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Alex Elder <elder@ieee.org>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Pavel Machek <pavel@ucw.cz>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, stern@rowland.harvard.edu,
 xen-devel@lists.xenproject.org, Matt Turner <mattst88@gmail.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>, linux-pm@vger.kernel.org,
 linux-um@lists.infradead.org, luto@kernel.org, tglx@linutronix.de,
 Richard Henderson <rth@twiddle.net>, Alex Elder <elder@kernel.org>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sven Schnelle <svens@linux.ibm.com>, linux-hyperv@vger.kernel.org,
 dave.hansen@linux.intel.com,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, linux-s390@vger.kernel.org,
 Stefano Stabellini <sstabellini@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, Corey Minyard <minyard@acm.org>,
 Helge Deller <deller@gmx.de>, vgoyal@redhat.com, mhiramat@kernel.org,
 Vasily Gorbik <gor@linux.ibm.com>, linux-xtensa@linux-xtensa.org,
 john.ogness@linutronix.de, coresight@lists.linaro.org,
 hidehiro.kawai.ez@hitachi.com, Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Tony Luck <tony.luck@intel.com>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 James Morse <james.morse@arm.com>, kernel-dev@igalia.com,
 fabiomirmar@gmail.com, halves@canonical.com, alejandro.j.jimenez@oracle.com,
 feng.tang@intel.com, will@kernel.org, corbet@lwn.net,
 Dexuan Cui <decui@microsoft.com>, bcm-kernel-feedback-list@broadcom.com,
 keescook@chromium.org, arnd@arndb.de, Haiyang Zhang <haiyangz@microsoft.com>,
 rostedt@goodmis.org, rcu@vger.kernel.org, bp@alien8.de,
 openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-parisc@vger.kernel.org,
 linux-alpha@vger.kernel.org, peterz@infradead.org,
 linux-remoteproc@vger.kernel.org, mikelley@microsoft.com,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 linux-leds@vger.kernel.org, Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Richard Weinberger <richard@nod.at>, x86@kernel.org, mingo@redhat.com,
 dyoung@redhat.com, paulmck@kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 linux-tegra@vger.kernel.org, andriy.shevchenko@linux.intel.com,
 vkuznets@redhat.com, linux-edac@vger.kernel.org, jgross@suse.com,
 netdev@vger.kernel.org, kernel@gpiccoli.net, linux-mips@vger.kernel.org,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Johannes Berg <johannes@sipsolutions.net>, linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 4/27/22 5:49 PM, Guilherme G. Piccoli wrote:
> This patch renames the panic_notifier_list to panic_pre_reboot_list;
> the idea is that a subsequent patch will refactor the panic path
> in order to better split the notifiers, running some of them very
> early, some of them not so early [but still before kmsg_dump()] and
> finally, the rest should execute late, after kdump. The latter ones
> are now in the panic pre-reboot list - the name comes from the idea
> that these notifiers execute before panic() attempts rebooting the
> machine (if that option is set).
> 
> We also took the opportunity to clean-up useless header inclusions,
> improve some notifier block declarations (e.g. in ibmasm/heartbeat.c)
> and more important, change some priorities - we hereby set 2 notifiers
> to run late in the list [iss_panic_event() and the IPMI panic_event()]
> due to the risks they offer (may not return, for example).
> Proper documentation is going to be provided in a subsequent patch,
> that effectively refactors the panic path.
> 
> Cc: Alex Elder <elder@kernel.org>

For "drivers/net/ipa/ipa_smp2p.c":

Acked-by: Alex Elder <elder@kernel.org>

> Cc: Alexander Gordeev <agordeev@linux.ibm.com>
> Cc: Anton Ivanov <anton.ivanov@cambridgegreys.com>
> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>
> Cc: Chris Zankel <chris@zankel.net>
> Cc: Christian Borntraeger <borntraeger@linux.ibm.com>
> Cc: Corey Minyard <minyard@acm.org>
> Cc: Dexuan Cui <decui@microsoft.com>
> Cc: "H. Peter Anvin" <hpa@zytor.com>
> Cc: Haiyang Zhang <haiyangz@microsoft.com>
> Cc: Heiko Carstens <hca@linux.ibm.com>
> Cc: Helge Deller <deller@gmx.de>
> Cc: Ivan Kokshaysky <ink@jurassic.park.msu.ru>
> Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Johannes Berg <johannes@sipsolutions.net>
> Cc: Juergen Gross <jgross@suse.com>
> Cc: "K. Y. Srinivasan" <kys@microsoft.com>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Matt Turner <mattst88@gmail.com>
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> Cc: Max Filippov <jcmvbkbc@gmail.com>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Paul Mackerras <paulus@samba.org>
> Cc: Pavel Machek <pavel@ucw.cz>
> Cc: Richard Henderson <rth@twiddle.net>
> Cc: Richard Weinberger <richard@nod.at>
> Cc: Robert Richter <rric@kernel.org>
> Cc: Stefano Stabellini <sstabellini@kernel.org>
> Cc: Stephen Hemminger <sthemmin@microsoft.com>
> Cc: Sven Schnelle <svens@linux.ibm.com>
> Cc: Tony Luck <tony.luck@intel.com>
> Cc: Vasily Gorbik <gor@linux.ibm.com>
> Cc: Wei Liu <wei.liu@kernel.org>
> Signed-off-by: Guilherme G. Piccoli <gpiccoli@igalia.com>
> ---
> 

. . .


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
