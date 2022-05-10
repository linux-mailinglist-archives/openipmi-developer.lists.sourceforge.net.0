Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6879E522545
	for <lists+openipmi-developer@lfdr.de>; Tue, 10 May 2022 22:13:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1noWEb-0003C6-Ao; Tue, 10 May 2022 20:13:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1noWEY-0003C0-1J
 for openipmi-developer@lists.sourceforge.net; Tue, 10 May 2022 20:13:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gJbDvxZCHLE9Xc3dgTDCPLuG4mRgGmv6OD8aG7M3JDQ=; b=gVYnZQINXLqjLIzULLF5RoA1qG
 f3gCcHRGpVOClC8284970pOW5LIM3HbSVWsBg0NmamTvSrx+O26o9BN/dQrViFruNQ9wHd0P8F6RN
 V37GWKHQS+SB20oK5wklHNjLeaPAPx6y5gkvNcbtwbTdoY6IRKJ12F/TwbshWEHxM/cw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gJbDvxZCHLE9Xc3dgTDCPLuG4mRgGmv6OD8aG7M3JDQ=; b=N+E6Tfcr+qWbuRzxq1AxaaTmf4
 DhkNZ8mn0tfccOX90qJsxiBJZ8OMIxFtu0g0wK05bytIbuPM0KYsMOZpecHE9doXIIni720cE3NRb
 vPysGkpnIag8gteNgub+XM/CYJpcv7lwPhS8c1y7+CqW9TRulEfCvCvZFHc/5kD1ljpI=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1noWES-0005CZ-Vs
 for openipmi-developer@lists.sourceforge.net; Tue, 10 May 2022 20:13:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gJbDvxZCHLE9Xc3dgTDCPLuG4mRgGmv6OD8aG7M3JDQ=; b=g3Nx+lB9bAjkoFhfBAw/tKnujE
 HE49wVGnvYPT6LdjDh7XC7p9pg3dQOiKQmVqs5yBTQcMLD/Qb7loz7GoYe9PtUSJMIbL1xCX7WOmP
 Vje/KjqWSNfESrwYFEgzZTAiGGwdZ+mo/M5Y4DNbzDEU8fdx1WAqo3dhuepVJxkwfJ6AyMl1hzYbL
 37Bt4s+cXuNOUF+dflK9we5prMFoOFLTCAg4y4fzR8H75s0j2xAYXr1Tlb+YwkS4w97u5Z+/kankc
 sGAGYvqPkX6LoRGzU4WQr1NirsakQGzt8bG3WfLCBDveLwXiZiOyOvqFNe/oiLGpRxJijV5VJBRHK
 Ucite2AA==;
Received: from [177.183.162.244] (helo=[192.168.0.5])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1noWDn-0000dk-Tv; Tue, 10 May 2022 22:12:41 +0200
Message-ID: <24a56892-adb3-809c-8c35-b5b5f001c283@igalia.com>
Date: Tue, 10 May 2022 17:11:08 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Sean Christopherson <seanjc@google.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-2-gpiccoli@igalia.com> <Ynk40U/KA+hLBZRC@google.com>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <Ynk40U/KA+hLBZRC@google.com>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 09/05/2022 12:52, Sean Christopherson wrote: > I find the
 shortlog to be very confusing, the bug has nothing to do with disabling >
 VMX and I distinctly remember wrapping VMXOFF with exception fixu [...] 
 Content analysis details:   (-2.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
X-Headers-End: 1noWES-0005CZ-Vs
Subject: Re: [Openipmi-developer] [PATCH 01/30] x86/crash,
 reboot: Avoid re-disabling VMX in all CPUs on crash/restart
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
 linux-xtensa@linux-xtensa.org, peterz@infradead.org,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, will@kernel.org, tglx@linutronix.de,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org, mikelley@microsoft.com,
 john.ogness@linutronix.de, bhe@redhat.com, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, "David P . Reed" <dpreed@deepplum.com>,
 mingo@redhat.com, bcm-kernel-feedback-list@broadcom.com,
 xen-devel@lists.xenproject.org, dyoung@redhat.com, vgoyal@redhat.com,
 pmladek@suse.com, dave.hansen@linux.intel.com, keescook@chromium.org,
 arnd@arndb.de, linux-pm@vger.kernel.org, linux-um@lists.infradead.org,
 rostedt@goodmis.org, rcu@vger.kernel.org, gregkh@linuxfoundation.org,
 bp@alien8.de, luto@kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, andriy.shevchenko@linux.intel.com,
 vkuznets@redhat.com, linux-edac@vger.kernel.org, jgross@suse.com,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, kernel@gpiccoli.net,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 stern@rowland.harvard.edu, senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com,
 mhiramat@kernel.org, kernel-dev@igalia.com, linux-alpha@vger.kernel.org,
 Paolo Bonzini <pbonzini@redhat.com>, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 09/05/2022 12:52, Sean Christopherson wrote:
> I find the shortlog to be very confusing, the bug has nothing to do with disabling
> VMX and I distinctly remember wrapping VMXOFF with exception fixup to prevent doom
> if VMX is already disabled :-).  The issue is really that nmi_shootdown_cpus() doesn't
> play nice with being called twice.
> 

Hey Sean, OK - I agree with you, the issue is really about the double
list addition.

> [...]
> 
> Call stacks for the two callers would be very, very helpful.
> [...]

> This feels like were just adding more duct tape to the mess.  nmi_shootdown() is
> still unsafe for more than one caller, and it takes a _lot_ of staring and searching
> to understand that crash_smp_send_stop() is invoked iff CONFIG_KEXEC_CORE=y, i.e.
> that it will call smp_ops.crash_stop_other_cpus() and not just smp_send_stop().
> 
> Rather than shared a flag between two relatively unrelated functions, what if we
> instead disabling virtualization in crash_nmi_callback() and then turn the reboot
> call into a nop if an NMI shootdown has already occurred?  That will also add a
> bit of documentation about multiple shootdowns not working.
> 
> And I believe there's also a lurking bug in native_machine_emergency_restart() that
> can be fixed with cleanup.  SVM can also block INIT and so should be disabled during
> an emergency reboot.
> 
> The attached patches are compile tested only.  If they seem sane, I'll post an
> official mini series.

Thanks Sean, it makes sense - my patch is more a "band-aid" whereas
yours fixes it in a more generic way. Confess I found the logic of your
patch complex, but as you said, it requires a *lot* of code analysis to
understand these multiple shutdown patches, the problem is complicated
by nature heh

I've tested your patch 0001 and it works well for all cases [0], so go
ahead and submit the miniseries, feel free to add:

Reported-and-tested-by: Guilherme G. Piccoli <gpiccoli@igalia.com>


I've read patch 0002 and it makes sense to me as well, a good proactive
bug fix =)

With that said, I'll of course drop this one from V2 of this series.
Cheers,


Guilherme




[0]
A summary of my tests and the code paths that the panic shutdown take
depending on some conditions:

New function that disables VMX/SVM: cpu_crash_disable_virtualization()
[should be executed in every online CPU on shutdown)

The panic path triggers the following call stacks depending on kdump and
post_notifiers:


(1) kexec/kdump + !crash_kexec_post_notifiers
->machine_crash_shutdown()
----.crash_shutdown() <custom handler>
------native_machine_crash_shutdown() [all custom handlers except Xen PV
call the native generic function]
--------crash_smp_send_stop()
----------kdump_nmi_shootdown_cpus()
------------nmi_shootdown_cpus(kdump_nmi_callback)
--------------crash_nmi_callback()
----------------kdump_nmi_callback()
------------------cpu_crash_disable_virtualization()


(2) kexec/kdump + crash_kexec_post_notifiers
->crash_smp_send_stop()
----kdump_nmi_shootdown_cpus()
------nmi_shootdown_cpus(kdump_nmi_callback)
--------crash_nmi_callback()
----------kdump_nmi_callback()
------------cpu_crash_disable_virtualization()

After this path, will execute machine_crash_shutdown() but
crash_smp_send_stop()
is guarded against double execution. Also, emergency restart calls
emergency_vmx_disable_all() .


(3) !kexec/kdump + crash_kexec_post_notifiers

Same as (2)


(4) !kexec/kdump + !crash_kexec_post_notifiers
-> smp_send_stop()
----native_stop_other_cpus()
------apic_send_IPI_allbutself(REBOOT_VECTOR)
--------sysvec_reboot
----------cpu_emergency_vmxoff() <if the IPI approach succeeded, CPU
stopped here>

If not:
------register_stop_handler()
--------apic_send_IPI_allbutself(NMI_VECTOR)
----------smp_stop_nmi_callback()
------------cpu_emergency_vmxoff()

After that, emergency_vmx_disable_all() gets called in the emergency
restart path as well.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
