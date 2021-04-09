Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4AC35A7A1
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Apr 2021 22:10:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lUxST-00078h-Fb; Fri, 09 Apr 2021 20:10:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <deller@gmx.de>) id 1lUxBO-0001yI-Uf
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 19:52:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iNspAAUXd0TGc9idWuqJezj9FgSbVIrdnHkC34OI6ys=; b=UAH16QFQlborpQ+PSw5J+58uCW
 SzQMsoHSIkpxLdx42dHeQlEUYRSMrdBjK/H9PU0FHpPn9GM7c0RyPbY0U6G5tpBBhkgSwTF/YunrJ
 hMDTS9bompoCR6uSzxr72eovVW7QsInyMAjFFa7xILgrTyg8r+NaLGD1kcKaQWC/FFlk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iNspAAUXd0TGc9idWuqJezj9FgSbVIrdnHkC34OI6ys=; b=XiJ4NfxqU6Lz+u0f4ZM8TlhpO2
 pIq1psHMF/dZP/Nhif3zb+bYFuiCsmw1abAS8n5nAb3CGwZFcvoPkjRQdHG1DAAED3eDEPCA3Nco9
 yO+Rcz23uGjIKm3xnoS0qNCJ+LqoDvKhg8LhlOq2K9WvUFokZkyMeOXB7T45FNn9y8sk=;
Received: from mout.gmx.net ([212.227.17.20])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lUx4W-00C1WV-Ek
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Apr 2021 19:45:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1617997367;
 bh=iNspAAUXd0TGc9idWuqJezj9FgSbVIrdnHkC34OI6ys=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=ldsXgBGJ3GSKvmbTxvP1itO26Qt3rKVAXa7HCeRwn7x6vvwIVyKAuuWMT/9Mbs/eq
 eUjUvdYyHT2oPnald/g3Raad9aGgTRMlgrGQZ1cKX9WKZtuOkezCA/ZBkxeKHYWicC
 dFguhZZAb4murEW3qrRROxlPjGsI5cEXZ4497eEg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.20.60] ([92.116.181.63]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1My36N-1lmD5l41nT-00zVNp; Fri, 09
 Apr 2021 21:42:47 +0200
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Alexander Lobakin <alobakin@pm.me>, Wei Liu <wei.liu@kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, Arnd Bergmann <arnd@arndb.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Andrew Morton <akpm@linux-foundation.org>, Kees Cook
 <keescook@chromium.org>, Mike Rapoport <rppt@kernel.org>,
 Corey Minyard <cminyard@mvista.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Vasily Gorbik <gor@linux.ibm.com>, "Jason J. Herne" <jjherne@linux.ibm.com>,
 Joerg Roedel <jroedel@suse.de>, Michael Kelley <mikelley@microsoft.com>,
 Joe Perches <joe@perches.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Scott Branden <scott.branden@broadcom.com>, Olof Johansson <olof@lixom.net>,
 Mihai Carabas <mihai.carabas@oracle.com>, Wang Wenhu <wenhu.wang@vivo.com>,
 Marek Czerski <ma.czerski@gmail.com>, Hongbo Yao <yaohongbo@huawei.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Vineeth Vijayan <vneethv@linux.ibm.com>, Heiko Carstens <hca@linux.ibm.com>,
 Peter Oberparleiter <oberpar@linux.ibm.com>,
 Alexander Egorenkov <egorenar@linux.ibm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Vlastimil Babka <vbabka@suse.cz>, "Paul E. McKenney" <paulmck@kernel.org>,
 "Steven Rostedt (VMware)" <rostedt@goodmis.org>,
 linux-alpha@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
 linux-parisc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-s390@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-um@lists.infradead.org, linux-hyperv@vger.kernel.org,
 xen-devel@lists.xenproject.org, linux-xtensa@linux-xtensa.org,
 openipmi-developer@lists.sourceforge.net, linux-clk@vger.kernel.org,
 linux-edac@vger.kernel.org, coresight@lists.linaro.org,
 linux-leds@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 netdev@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-staging@lists.linux.dev,
 dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
 linux-arch@vger.kernel.org, kexec@lists.infradead.org, rcu@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
References: <20210409100250.25922-1-andriy.shevchenko@linux.intel.com>
From: Helge Deller <deller@gmx.de>
Message-ID: <cef5d4ba-9d91-7249-3ba4-c7f1c89ab119@gmx.de>
Date: Fri, 9 Apr 2021 21:41:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210409100250.25922-1-andriy.shevchenko@linux.intel.com>
Content-Language: en-US
X-Provags-ID: V03:K1:A9ZHNG4WxpUBFm/OLrSjy4wmvepyAKfJ/9J0GMwZPVvou+WL0jt
 juhLu46u1kS+URbP+8+Pw+p7oQ3JpIMBAMo3AEr85dJ6auKoY3YWnT5NDC8TMlGFgRljwyK
 +Z8x/lMp3a1Sj6G+ejcETzf/1wuAwQ3HVr+B/sOgfO9g9aKIA+KstHHg98r0RbXaN5gO1f1
 c2FCqtclGkoW83386bLAQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:QTiAIr1d9DU=:ouDY+zoQbxd0AYwIoqdq7+
 aGg5cjuhFxN4dPlhbUVe4gHa8V6O/ob8/GYNsz48eMGoWdTSBWNdigEx/P3CeG5ajt1K/D1wj
 ZsuimGcNU/JIwDEC4hAa9wiKwplSRt9GyqnNpMymPpOincerI2QNIINtkESpmD/MQtIZKWIBd
 LzLZQt5g5JHyD7KSRX3CSO3kxsUbUK397UnmPrlbBzZiG2Ki8L87whx1HhStGiOawVNU3NX1U
 1qJ/Q2KXhaSRyDrR5JobMbpVJ16dZyIPC+nB+S5uAuxAgE/sFmpim0FlFwngs3hHA1Ua7nKDx
 vaviKH0ZdVtdmwFCmPWXldfwgaGRXmcVHieN8y3Cf4AES1arvvUXfDdU8TlIFPlMWolAfy75b
 aF6Vq+x5W46hFMRh+gkaDVvXSN0IJLemCnzysIaYGHy5hfBua6u7o+npWjwJ1MLna90v6WJqp
 qtsmLRv7qq9JD3rE3mLnbgCeyikpDMiwYezxJc5y085Nda4MocVjIUyHwfrItCcTJy+6nK+32
 QtS5ysQPbZtg/0BLTkwmTgg1C9wyCqJwqSPkJHKs0fedY3Cg4AmlYSUFZ+l1+yWlahYNrwIjD
 1LvXS6jFdPgrwM0Bw5zEn5iTaVsN3Dpg/BK7RBEnkSXG2EhjbG0P5JyU6ZQFlyoWZsOBl1Dnp
 9RlHsz3O6/vJl501tNpFzFkE9v1fbjuJiCnsWIZVHwcbxwgsYWs1VvePFQoqRLQUoGWk7YlQ8
 Mycnfd16TOkM/BTklN35/8ZoVz9X6VjMTLQhDSDUL5LeX75GwKdRnpVjwg+mpqmINujIEDZVj
 bRIcfuM8kM4QXmEUEjmqZoVNDqdo0531mNm3kN19X3Wj5I9ywhlJarAEaPUOs1zKkdzPb4HdC
 +5ul9M6a4WBWbT5U1mKmQOeT0D6MCEGVKv+v/aWQ+A07Sxs9cad/sxt/XXniiusfDTtv1wpHL
 48xz68wHDUi6JHhewqK39v9CUwOqs24U/FOrqR6QogsoMdeib8LB3HQXiJzJhPuxnfQKT5n0E
 2KocVJOLOCpFD00uImKyPG4urooQInY0CgXuaTbgwb2QXtNz/HWsnU7bcGH95t//ETUS0YST/
 HIEC4Jt3JrZiU2K24JZ5uAUtc1tWcvMl+zNPO7uqbferwivk7BjAs0A1bkS3994pg0p9gu7e6
 IGlScHPk65VIaL0560ZSSQDJOn/n987RThMli+dnKucI6xieqz82byl0Okk5UU49D7L5Y=
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (deller[at]gmx.de)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mvista.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.20 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lUx4W-00C1WV-Ek
X-Mailman-Approved-At: Fri, 09 Apr 2021 20:10:23 +0000
Subject: Re: [Openipmi-developer] [PATCH v2 1/1] kernel.h: Split out panic
 and oops helpers
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
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Lai Jiangshan <jiangshanlai@gmail.com>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 Pavel Machek <pavel@ucw.cz>, "H. Peter Anvin" <hpa@zytor.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Will Deacon <will@kernel.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, Daniel Drake <dsd@laptop.org>,
 Jens Frederich <jfrederich@gmail.com>, Richard Weinberger <richard@nod.at>,
 x86@kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Jakub Kicinski <kuba@kernel.org>, Matt Turner <mattst88@gmail.com>,
 Iurii Zaikin <yzaikin@google.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Mike Leach <mike.leach@linaro.org>, Ohad Ben-Cohen <ohad@wizery.com>,
 Corey Minyard <minyard@acm.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Jeff Dike <jdike@addtoit.com>, Josh Triplett <josh@joshtriplett.org>,
 Alex Elder <elder@kernel.org>, Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Richard Henderson <rth@twiddle.net>, Juergen Gross <jgross@suse.com>,
 Chris Zankel <chris@zankel.net>, Tony Luck <tony.luck@intel.com>,
 Jon Nettleton <jon.nettleton@gmail.com>, Stephen Boyd <sboyd@kernel.org>,
 Sebastian Reichel <sre@kernel.org>, Dinh Nguyen <dinguyen@kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, James Morse <james.morse@arm.com>,
 Eric Biederman <ebiederm@xmission.com>, Leo Yan <leo.yan@linaro.org>,
 Borislav Petkov <bp@alien8.de>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On 4/9/21 12:02 PM, Andy Shevchenko wrote:
> kernel.h is being used as a dump for all kinds of stuff for a long time.
> Here is the attempt to start cleaning it up by splitting out panic and
> oops helpers.
>
> There are several purposes of doing this:
> - dropping dependency in bug.h
> - dropping a loop by moving out panic_notifier.h
> - unload kernel.h from something which has its own domain
>
> At the same time convert users tree-wide to use new headers, although
> for the time being include new header back to kernel.h to avoid twisted
> indirected includes for existing users.
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Acked-by: Mike Rapoport <rppt@linux.ibm.com>
> Acked-by: Corey Minyard <cminyard@mvista.com>
> Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
> Acked-by: Arnd Bergmann <arnd@arndb.de>
> Acked-by: Kees Cook <keescook@chromium.org>
> Acked-by: Wei Liu <wei.liu@kernel.org>
> Acked-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> Signed-off-by: Andrew Morton <akpm@linux-foundation.org>

Acked-by: Helge Deller <deller@gmx.de> # parisc

Helge


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
