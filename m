Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B466C521641
	for <lists+openipmi-developer@lfdr.de>; Tue, 10 May 2022 15:02:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1noPVa-0000sv-DH; Tue, 10 May 2022 13:02:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1noPVZ-0000sp-GN
 for openipmi-developer@lists.sourceforge.net; Tue, 10 May 2022 13:02:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JWyep5EFfEPXN0/UUFSWkvsTwBT4W/fOxchQHhKa4RM=; b=Woc/NXvkvz40YJgVg82bH5nslB
 0GcAR/WGo8BezImUjtmVgJPz9t3V9tICSoMRhbVmEejDZkCTrtoW5g74qil2NCaBt7EIelhyDpOWE
 CKzQLRFzfw6lsGsGJD3qvs9geOzD9op1qQENy1qAeq/qkCeGToRYfT+PdY2FGN8RXtuo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JWyep5EFfEPXN0/UUFSWkvsTwBT4W/fOxchQHhKa4RM=; b=JwMgfWhbb/2yh42Urmo64JmP3o
 gj4tKxi4ffA8dsc5jLFLFXp6rae+EoUw2nzi2smI5eZcYbdeLkfLs9zb/ySfo4Hko3Pah8hRSpMw8
 kIsB1LJjROqqxL6HOwnrHrECvvfqEiJXUqJcKrsDMlZ8FBXHwdiDNb7+5nsKTL0b8Gcg=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1noPVU-0008CK-Kk
 for openipmi-developer@lists.sourceforge.net; Tue, 10 May 2022 13:02:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JWyep5EFfEPXN0/UUFSWkvsTwBT4W/fOxchQHhKa4RM=; b=sx6DF8PoUIO1mHu5cZY1RxwoA9
 niB1KysO8rrmF0zp8Z8GTN/NtCj2d4QR4yv3E2E5W17RExRi8A0KAmcw+03c1G1ooU/Pm21U+zIEh
 0zp/hEbV2HUhNtVPnHFdp5DB6IlN6W8R3VOm7oythqBX2GRaLpOj+rJPIjIYg4FRTMuO76QGoLFC6
 YTJOWt6WzTDBhnK8IJgaIHAnWrK2atb9lCglavMKbFL3MElzKi625NHcWNdIldxGBU96c/pM4S0g8
 wJXsSSNXtcQC2Akbyu07xQvQmC9j0tVwKiovTIAilxmwfqg23OLqdBOLywiRmkuVFih5uNhaytVXp
 cz9YcgaQ==;
Received: from [177.183.162.244] (helo=[192.168.0.5])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1noPUd-0004lT-6O; Tue, 10 May 2022 15:01:35 +0200
Message-ID: <0a20dd06-f459-638e-cb4d-8255ab1a1f23@igalia.com>
Date: Tue, 10 May 2022 10:00:58 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Petr Mladek <pmladek@suse.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-6-gpiccoli@igalia.com> <YnpXGOXicwdy1E6n@alley>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <YnpXGOXicwdy1E6n@alley>
X-Spam-Score: -1.1 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/05/2022 09:14, Petr Mladek wrote: > [...] >> With that
 said, it's dangerous to use regular spinlocks in such path, >> as introduced
 by commit b3c0f8774668 ("misc/pvpanic: probe multiple instance [...] 
 Content analysis details:   (-1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.9 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1noPVU-0008CK-Kk
Subject: Re: [Openipmi-developer] [PATCH 05/30] misc/pvpanic: Convert
 regular spinlock into trylock on panic path
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
Cc: linux-hyperv@vger.kernel.org, halves@canonical.com,
 gregkh@linuxfoundation.org, peterz@infradead.org,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, will@kernel.org, tglx@linutronix.de,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org, mikelley@microsoft.com,
 john.ogness@linutronix.de, bhe@redhat.com, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, zhenwei pi <pizhenwei@bytedance.com>,
 mingo@redhat.com, bcm-kernel-feedback-list@broadcom.com,
 xen-devel@lists.xenproject.org, dyoung@redhat.com, vgoyal@redhat.com,
 linux-xtensa@linux-xtensa.org, dave.hansen@linux.intel.com,
 keescook@chromium.org, arnd@arndb.de, linux-pm@vger.kernel.org,
 Mihai Carabas <mihai.carabas@oracle.com>, coresight@lists.linaro.org,
 Shile Zhang <shile.zhang@linux.alibaba.com>, linux-um@lists.infradead.org,
 rostedt@goodmis.org, rcu@vger.kernel.org,
 Wang ShaoBo <bobo.shaobowang@huawei.com>, bp@alien8.de, luto@kernel.org,
 linux-tegra@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 andriy.shevchenko@linux.intel.com, vkuznets@redhat.com,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 jgross@suse.com, linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 kernel@gpiccoli.net, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 stern@rowland.harvard.edu, senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com,
 mhiramat@kernel.org, kernel-dev@igalia.com, linux-alpha@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 10/05/2022 09:14, Petr Mladek wrote:
> [...]
>> With that said, it's dangerous to use regular spinlocks in such path,
>> as introduced by commit b3c0f8774668 ("misc/pvpanic: probe multiple instances").
>> This patch fixes that by replacing regular spinlocks with the trylock
>> safer approach.
> 
> It seems that the lock is used just to manipulating a list. A super
> safe solution would be to use the rcu API: rcu_add_rcu() and
> list_del_rcu() under rcu_read_lock(). The spin lock will not be
> needed and the list will always be valid.
> 
> The advantage would be that it will always call members that
> were successfully added earlier. That said, I am not familiar
> with pvpanic and am not sure if it is worth it.
> 
>> It also fixes an old comment (about a long gone framebuffer code) and
>> the notifier priority - we should execute hypervisor notifiers early,
>> deferring this way the panic action to the hypervisor, as expected by
>> the users that are setting up pvpanic.
> 
> This should be done in a separate patch. It changes the behavior.
> Also there might be a discussion whether it really should be
> the maximal priority.
> 
> Best Regards,
> Petr

Thanks for the review Petr. Patch was already merged - my goal was to be
concise, i.e., a patch per driver / module, so the patch kinda fixes
whatever I think is wrong with the driver with regards panic handling.

Do you think it worth to remove this patch from Greg's branch just to
split it in 2? Personally I think it's not worth, but opinions are welcome.

About the RCU part, this one really could be a new patch, a good
improvement patch - it makes sense to me, we can think about that after
the fixes I guess.

Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
