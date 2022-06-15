Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B18954CB86
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Jun 2022 16:38:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o1UAD-0004Wy-Tb; Wed, 15 Jun 2022 14:38:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <gpiccoli@igalia.com>) id 1o1UA1-0004Wm-2N
 for openipmi-developer@lists.sourceforge.net; Wed, 15 Jun 2022 14:38:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=75kgVCcqOPOLeu4JBiLLFab/dM4uNZ1dcLuvpDx9ZCg=; b=A4PSI08OYCMXqJvMjW2rW7NnO5
 4vZL2OaHL34hX0vAnmFYFNGNjkRtz9AjwhUvluwX2K3PEwA806RX4miqLFjuP3lD4gJa9ZNHoPpuc
 xYaIDiJsVuuhLhLqcTl15Fbi2yg2O5nAd2V7X8N2/IHfkEki8Y8V/sM2MyoyfgleWJQk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=75kgVCcqOPOLeu4JBiLLFab/dM4uNZ1dcLuvpDx9ZCg=; b=Z8CJQP9g79KZ/LXjGNviaQbCsa
 moUWZcFWFDk/LCrog/3b9F5lQSa9s+AgkNpFiQLy88IyukOrwKuBGDtjbllBapX6hLsj72EGRa350
 e/Mi0PK8GHzuZrUsh++4TvuL3N1i7+ja4DyBQ/D4zvg10q1JnpaqSuJtmntDvy2BBUlM=;
Received: from fanzine.igalia.com ([178.60.130.6] helo=fanzine2.igalia.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o1U9y-002T8o-4e
 for openipmi-developer@lists.sourceforge.net; Wed, 15 Jun 2022 14:38:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=75kgVCcqOPOLeu4JBiLLFab/dM4uNZ1dcLuvpDx9ZCg=; b=kAIWl67VuUe8cBDkmFOZTh4b+J
 Uy6PgE2+CwIEzhFEfsXCTAadcMkk5TefuTIBHvgzxNrjmUz+/r/f3fMBR5i8mMC7UweLMh9MkeJoD
 97gkOJRUGibA77qDy9s4vL7NkQkS1Sv+TX4WpruLFHmbGvImVgE9LeYadgdIraA8AGxMlB+PxaWy/
 1adKvJuvvpCbTsZosCqi5SMDlMupfKEgEY7JpKMS8HhvbF7gyowCTheRqW0YX0S9D05qpW9G1fKLt
 DJUWQ6k8Tz/HxaHb6kuJRSWnDBXrsJA/DQco3hh/lFSm8XLWvSeNFNfH2bKr+ugXM0hH/Gw2zl2s+
 laFslj7w==;
Received: from 179.red-81-39-194.dynamicip.rima-tde.net ([81.39.194.179]
 helo=[192.168.15.167]) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1o1U8m-002LYs-SW; Wed, 15 Jun 2022 16:37:04 +0200
Message-ID: <362f6520-8209-1721-823c-11928338f57d@igalia.com>
Date: Wed, 15 Jun 2022 11:36:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Petr Mladek <pmladek@suse.com>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-25-gpiccoli@igalia.com>
 <87fskzuh11.fsf@email.froward.int.ebiederm.org>
 <0d084eed-4781-c815-29c7-ac62c498e216@igalia.com> <Yqic0R8/UFqTbbMD@alley>
From: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
In-Reply-To: <Yqic0R8/UFqTbbMD@alley>
X-Spam-Score: -1.1 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Perfect Petr, thanks for your feedback! I'll be out for some
 weeks, but after that what I'm doing is to split the series in 2 parts: (a)
 The general fixes, which should be reviewed by subsystem maintainers and
 even merged individually by them. 
 Content analysis details:   (-1.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1o1U9y-002T8o-4e
Subject: Re: [Openipmi-developer] [PATCH 24/30] panic: Refactor the panic
 path
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-hyperv@vger.kernel.org,
 halves@canonical.com, gregkh@linuxfoundation.org, peterz@infradead.org,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, mikelley@microsoft.com, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, will@kernel.org, tglx@linutronix.de,
 linux-leds@vger.kernel.org, linux-s390@vger.kernel.org,
 john.ogness@linutronix.de, bhe@redhat.com, corbet@lwn.net, paulmck@kernel.org,
 fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 linux-mips@vger.kernel.org, dyoung@redhat.com, vgoyal@redhat.com,
 mhiramat@kernel.org, linux-xtensa@linux-xtensa.org,
 dave.hansen@linux.intel.com, keescook@chromium.org, arnd@arndb.de,
 linux-pm@vger.kernel.org, linux-um@lists.infradead.org, rostedt@goodmis.org,
 rcu@vger.kernel.org, bp@alien8.de, luto@kernel.org,
 linux-tegra@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 andriy.shevchenko@linux.intel.com, akpm@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 jgross@suse.com, linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
 kernel@gpiccoli.net, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 stern@rowland.harvard.edu, senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com,
 "Eric W. Biederman" <ebiederm@xmission.com>, kernel-dev@igalia.com,
 linux-alpha@vger.kernel.org, vkuznets@redhat.com,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Perfect Petr, thanks for your feedback!

I'll be out for some weeks, but after that what I'm doing is to split
the series in 2 parts:

(a) The general fixes, which should be reviewed by subsystem maintainers
and even merged individually by them.

(b) The proper panic refactor, which includes the notifiers list split,
etc. I'll think about what I consider the best solution for the
crash_dump required ones, and will try to split in very simple patches
to make it easier to review.

Cheers,


Guilherme


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
