Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E1A51FDA5
	for <lists+openipmi-developer@lfdr.de>; Mon,  9 May 2022 15:11:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1no3AH-0002zU-Sr; Mon, 09 May 2022 13:11:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1no3AG-0002zO-F6
 for openipmi-developer@lists.sourceforge.net; Mon, 09 May 2022 13:11:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c6E44QfcLWCPcpfVVn8DZm/tazb9qDNjecxU8jgjjwM=; b=XMjoK8r10BW4UKGe33EM25ZGfo
 b9iBioHF2iR7OVpz7beVpROXTn7aXmu30DufUTly/NxD6QL3sauNqi1seZgeu0lcNt1/hFm4zN4wC
 2DpMf6waL7Hy6tSaPS231pndvJ2j/exmdh5cTKt5h/g/U9xeg9rkIjQVh9T+KAyZ1FbE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c6E44QfcLWCPcpfVVn8DZm/tazb9qDNjecxU8jgjjwM=; b=NBMoPQMYFCTDfVdH2lt/r5wy1S
 aPmhRJUgTQNrlO7L7FbTT1VYMOSOre2WrMFp9THJebmvAjsC2znRpePD8tyrIuTmlE1iGhw1lXAWH
 nmTi0yUJHSXKKvDhYenlrzT3EETdKVlFU4fwApGAjNB5BsngX3WD1uV5lXErjwEMqVzg=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1no3AC-0002Ih-DM
 for openipmi-developer@lists.sourceforge.net; Mon, 09 May 2022 13:11:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c6E44QfcLWCPcpfVVn8DZm/tazb9qDNjecxU8jgjjwM=; b=JQ1X+XDjDPRoAxPLkbe9tWes8w
 l11iC7oa/HVnyRK3qB7UvK9JEgQqPIREqD5654T0lMLes3kGheOm/R45s0nxu4hyBPxmCTVnzlJkN
 ZvlwDaZFuWVIh4IaLUzoP+QdJvpm215SH2+0rVomODoRdVpIAavgxOQl3rDnkTMN+fyPnfNOV7B7S
 PwRkKHJor0sF94EKnip9+x+OMSUvYBWlrOB2NiCodRGVM8ztswBp00gdyDLuMLY0TLuRV/nOMh+Z7
 dku4FKzrs/p9E3LkAgwz4nFi/oHL/EcQWXaMAdDUro5POIL0/IvuDCL2llWo8K6mm9F1PYJhGhMV8
 hibQS8tw==;
Received: from [177.183.162.244] (helo=[192.168.0.5])
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1no39b-0005V6-KV; Mon, 09 May 2022 15:10:24 +0200
Message-ID: <65f24bc5-2211-0139-ee12-b2608e81ceb1@igalia.com>
Date: Mon, 9 May 2022 10:09:21 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Suzuki K Poulose <suzuki.poulose@arm.com>, akpm@linux-foundation.org,
 bhe@redhat.com, pmladek@suse.com, kexec@lists.infradead.org
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-10-gpiccoli@igalia.com>
 <3cafe4fd-8a0b-2633-44a3-2995abd6c38c@arm.com>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <3cafe4fd-8a0b-2633-44a3-2995abd6c38c@arm.com>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 28/04/2022 05:11, Suzuki K Poulose wrote: > Hi Guilherme, 
 > > On 27/04/2022 23:49, Guilherme G. Piccoli wrote: >> The panic notifier
 infrastructure executes registered callbacks when >> a panic eve [...] 
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
X-Headers-End: 1no3AC-0002Ih-DM
Subject: Re: [Openipmi-developer] [PATCH 09/30] coresight: cpu-debug:
 Replace mutex with mutex_trylock on panic notifier
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
 john.ogness@linutronix.de, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 dyoung@redhat.com, vgoyal@redhat.com, Mike Leach <mike.leach@linaro.org>,
 linux-xtensa@linux-xtensa.org, dave.hansen@linux.intel.com,
 keescook@chromium.org, arnd@arndb.de, linux-pm@vger.kernel.org,
 coresight@lists.linaro.org, Leo Yan <leo.yan@linaro.org>,
 linux-um@lists.infradead.org, rostedt@goodmis.org, rcu@vger.kernel.org,
 bp@alien8.de, luto@kernel.org, linux-tegra@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, andriy.shevchenko@linux.intel.com,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 jgross@suse.com, Mathieu Poirier <mathieu.poirier@linaro.org>,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, kernel@gpiccoli.net,
 linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 28/04/2022 05:11, Suzuki K Poulose wrote:
> Hi Guilherme,
> 
> On 27/04/2022 23:49, Guilherme G. Piccoli wrote:
>> The panic notifier infrastructure executes registered callbacks when
>> a panic event happens - such callbacks are executed in atomic context,
>> with interrupts and preemption disabled in the running CPU and all other
>> CPUs disabled. That said, mutexes in such context are not a good idea.
>>
>> This patch replaces a regular mutex with a mutex_trylock safer approach;
>> given the nature of the mutex used in the driver, it should be pretty
>> uncommon being unable to acquire such mutex in the panic path, hence
>> no functional change should be observed (and if it is, that would be
>> likely a deadlock with the regular mutex).
>>
>> Fixes: 2227b7c74634 ("coresight: add support for CPU debug module")
>> Cc: Leo Yan <leo.yan@linaro.org>
>> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
>> Cc: Mike Leach <mike.leach@linaro.org>
>> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
>> Signed-off-by: Guilherme G. Piccoli <gpiccoli@igalia.com>
> 
> How would you like to proceed with queuing this ? I am happy
> either way. In case you plan to push this as part of this
> series (I don't see any potential conflicts) :
> 
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

Hi Suzuki, some other maintainers are taking the patches to their next
branches for example. I'm working on V2, and I guess in the end would be
nice to reduce the size of the series a bit.

So, do you think you could pick this one for your coresight/next branch
(or even for rc cycle, your call - this is really a fix)?
This way, I won't re-submit this one in V2, since it's gonna be merged
already in your branch.

Thanks in advance,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
