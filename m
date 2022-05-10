Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F98521B96
	for <lists+openipmi-developer@lfdr.de>; Tue, 10 May 2022 16:13:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1noQcT-00060U-Sg; Tue, 10 May 2022 14:13:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <mpe@ellerman.id.au>) id 1noQcS-00060O-JI
 for openipmi-developer@lists.sourceforge.net; Tue, 10 May 2022 14:13:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:
 References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RKiZUE5HvPhTVnUibJtmltdG/qpHsl+mSP0bgs2lHhQ=; b=GzyZ0/JFzRtiqhbpfsGM5Fobil
 KaB5Dx9+Km34S0LvAdGLK8efQ+5xcbyGZvbIR/4bgBcfXUTv5bbgBpKHHzGntjDm8jPrS9y2OtsvP
 fw36573j/2ZrZKFOhc4hxHC9c2oM3xa3fMIkBvpKaFHA+QHrOLDyy1ytVdQFSseaTJfE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RKiZUE5HvPhTVnUibJtmltdG/qpHsl+mSP0bgs2lHhQ=; b=Ti/JHccjrpkiHtEplXKY0iy4OS
 qWWYH9bOTG0Sqmv03lsyuQ939U//IwWwtT83YyO/l+xHvg2V48FBEEBibePY+Nq54ESP2eUdYmEJA
 GFt8xjU5M+L90MqAXEEF4ci689tjcXy0WWMDMbk/AlVHFQAQojta/oK6BASVV+I1CMG0=;
Received: from gandalf.ozlabs.org ([150.107.74.76])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1noQcP-0003ho-BA
 for openipmi-developer@lists.sourceforge.net; Tue, 10 May 2022 14:13:42 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 4KyKJp4qqdz4yTd;
 Tue, 10 May 2022 23:54:02 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ellerman.id.au;
 s=201909; t=1652190848;
 bh=RKiZUE5HvPhTVnUibJtmltdG/qpHsl+mSP0bgs2lHhQ=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=Z05kSyfn/tRZEkMC+xx0iIJQ7Am+MQO7HLgvv0mZSHOcfpqTom2o/uwqzS0x8Mf2S
 +MV9rZ+Fzf71f3gh47v8ZN6FuQpE+0hL2e6Ug+4kF9Y6fEpYke0W/joqSUA70Lwp5I
 4Ppma9tFa9PkRNG20BN4X8MRlMpJ63sRO/S19u9v0FZlEHa4Js3eqk1sS3wGAa85dR
 +Jh96R1o2OAtJhZFfuVMo1EZ8CMSa8mkEAFP0AyoLzOV+kygqKbLAfKRxs3fKgbcsD
 1Vaxn4RMiVSaImYmC7RQ1ktIs3LG4P5Jb+tgoFnzybYroBhkWvfkc77elbZWKz1nx/
 2xhke52QkhhQQ==
From: Michael Ellerman <mpe@ellerman.id.au>
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>, Hari Bathini
 <hbathini@linux.ibm.com>
In-Reply-To: <f9c3de3c-1709-a1aa-2ece-c9fbfd5e6d6a@igalia.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-9-gpiccoli@igalia.com>
 <3c34d8e2-6f84-933f-a4ed-338cd300d6b0@linux.ibm.com>
 <f9c3de3c-1709-a1aa-2ece-c9fbfd5e6d6a@igalia.com>
Date: Tue, 10 May 2022 23:53:56 +1000
Message-ID: <87fslh8pe3.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  "Guilherme G. Piccoli" <gpiccoli@igalia.com> writes: > On
 05/05/2022 15:55, Hari Bathini wrote: >> [...] >> The change looks good. I
 have tested it on an LPAR (ppc64). >> >> Reviewed-by: Hari Bathini [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1noQcP-0003ho-BA
Subject: Re: [Openipmi-developer] [PATCH 08/30] powerpc/setup:
 Refactor/untangle panic notifiers
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
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org, will@kernel.org,
 tglx@linutronix.de, linux-leds@vger.kernel.org, linux-s390@vger.kernel.org,
 mikelley@microsoft.com, john.ogness@linutronix.de, bhe@redhat.com,
 corbet@lwn.net, paulmck@kernel.org, fabiomirmar@gmail.com, x86@kernel.org,
 mingo@redhat.com, bcm-kernel-feedback-list@broadcom.com,
 xen-devel@lists.xenproject.org, dyoung@redhat.com, vgoyal@redhat.com,
 pmladek@suse.com, dave.hansen@linux.intel.com, keescook@chromium.org,
 arnd@arndb.de, linux-pm@vger.kernel.org, linux-um@lists.infradead.org,
 rostedt@goodmis.org, rcu@vger.kernel.org, gregkh@linuxfoundation.org,
 bp@alien8.de, Nicholas Piggin <npiggin@gmail.com>, luto@kernel.org,
 linux-tegra@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 andriy.shevchenko@linux.intel.com, akpm@linux-foundation.org,
 linux-edac@vger.kernel.org, jgross@suse.com, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com, mhiramat@kernel.org,
 kernel-dev@igalia.com, linux-alpha@vger.kernel.org, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

"Guilherme G. Piccoli" <gpiccoli@igalia.com> writes:
> On 05/05/2022 15:55, Hari Bathini wrote:
>> [...] 
>> The change looks good. I have tested it on an LPAR (ppc64).
>> 
>> Reviewed-by: Hari Bathini <hbathini@linux.ibm.com>
>> 
>
> Hi Michael. do you think it's possible to add this one to powerpc/next
> (or something like that), or do you prefer a V2 with his tag?

Ah sorry, I assumed it was going in as part of the whole series. I guess
I misread the cover letter.

So you want me to take this patch on its own via the powerpc tree?

cheers


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
