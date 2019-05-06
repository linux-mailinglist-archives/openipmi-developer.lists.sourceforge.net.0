Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C98D19CF7
	for <lists+openipmi-developer@lfdr.de>; Fri, 10 May 2019 14:04:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hP4Gd-0002zu-16; Fri, 10 May 2019 12:04:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mchehab+samsung@kernel.org>)
 id 1hNjiK-00018h-FV; Mon, 06 May 2019 19:55:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=svFixFLsbnaR5DUt4ImgtkhN2pmye2Nmylim0WQyDAU=; b=khdB9KVV2aY/ATk2lBKlpVC0Rx
 wE0nJ89ihZCwqsuz5+qt2pzxGectNcPjZ0Ew6ug3GmmTZ1zfCyOBF9ClCjEk0B2eAdwK0yf9O1/kc
 CzsAPmMyRk6DcieErSZm0Q1X5Tzf3naKf+KsT6wQ606g4F41H1185HLuxCckoxhSoTkY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=svFixFLsbnaR5DUt4ImgtkhN2pmye2Nmylim0WQyDAU=; b=JzLnvR8AxDHMaebIHoP8VOdQhY
 L+FlLhSHf8A4xW0XIvLoxNwWBGEcgG+gY2WbG6uMGcCDjFUQT8n8p1FUv54ONda60tIrgYBCDhPql
 /YGIkBuI2nj7yGGrE6l/1BJZL7kY2JPSJxTPG3V4AKa1lIB8MgpuDmEEBhOerzHtscIA=;
Received: from casper.infradead.org ([85.118.1.10])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hNjiF-007aw9-QF; Mon, 06 May 2019 19:55:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=svFixFLsbnaR5DUt4ImgtkhN2pmye2Nmylim0WQyDAU=; b=K9WI+zD/+TOTuXyzRM3G0QrDjG
 O43eurvDKzXS14FOyzPI66y2DyZJK3ddvQ17HuJpD3Dkbpp79KIPyIc15lIW7bL6o/2IGwUXHJnoE
 7oG1A+M8EAKYBGhEWvxDE7yw1SsCjeVfdDN46pMZVeJiXYcFYpEZ6BVHabmbsYj7K+l8d+CO0NsWJ
 X90cZKjwaT2MBtVvJEsxuHXwkk036LS07zGrOkcMW419VfZxtnGajVdxgtgQf3BRcrzFoI/6TKMGE
 BMrjekCKBlvsGpjvJHnwEr+tmcnRqswvMdmTpdFRftvLfz9mwyOr5M27O56OJUnDhbZTYUnkXIrGm
 zPeBiieQ==;
Received: from [179.182.172.35] (helo=coco.lan)
 by casper.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNje4-000732-8K; Mon, 06 May 2019 19:51:28 +0000
Date: Mon, 6 May 2019 16:50:59 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Linux Doc Mailing List <linux-doc@vger.kernel.org>
Message-ID: <20190506165059.51eb2959@coco.lan>
In-Reply-To: <20190424065209.GC4038@hirez.programming.kicks-ass.net>
References: <cover.1555938375.git.mchehab+samsung@kernel.org>
 <cda57849a6462ccc72dcd360b30068ab6a1021c4.1555938376.git.mchehab+samsung@kernel.org>
 <20190423083135.GA11158@hirez.programming.kicks-ass.net>
 <20190423125519.GA7104@redhat.com>
 <20190423130132.GT4038@hirez.programming.kicks-ass.net>
 <20190423103053.07cf2149@lwn.net>
 <20190423171158.GG12232@hirez.programming.kicks-ass.net>
 <20190423172006.GD16353@zn.tnic> <20190423170409.7b1370ac@coco.lan>
 <20190423213816.GE16353@zn.tnic>
 <20190424065209.GC4038@hirez.programming.kicks-ass.net>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hNjiF-007aw9-QF
X-Mailman-Approved-At: Fri, 10 May 2019 12:04:46 +0000
Subject: Re: [Openipmi-developer] [PATCH v2 56/79] docs:
 Documentation/*.txt: rename all ReST files to *.rst
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
Cc: Mike Snitzer <snitzer@redhat.com>, "Rafael
 J. Wysocki" <rafael@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Farhan Ali <alifm@linux.ibm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, Jaroslav Kysela <perex@perex.cz>,
 kernel-hardening@lists.openwall.com, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-arch@vger.kernel.org,
 linux-sh@vger.kernel.org, James Morris <jmorris@namei.org>,
 Halil Pasic <pasic@linux.ibm.com>, tboot-devel@lists.sourceforge.net,
 Alan Stern <stern@rowland.harvard.edu>,
 openipmi-developer@lists.sourceforge.net, Guenter Roeck <linux@roeck-us.net>,
 Boqun Feng <boqun.feng@gmail.com>, Nicholas Piggin <npiggin@gmail.com>,
 Alex Williamson <alex.williamson@redhat.com>, Matt Mackall <mpm@selenic.com>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
 linux-fbdev@vger.kernel.org, linux-ia64@vger.kernel.org,
 David Airlie <airlied@linux.ie>, "James E.J.
 Bottomley" <James.Bottomley@HansenPartnership.com>, dm-devel@redhat.com,
 Harry Wei <harryxiyou@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Alasdair Kergon <agk@redhat.com>, linux-s390@vger.kernel.org,
 Alex Shi <alex.shi@linux.alibaba.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Helge Deller <deller@gmx.de>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Changbin Du <changbin.du@gmail.com>, Eric Farman <farman@linux.ibm.com>,
 linux-watchdog@vger.kernel.org, Corey Minyard <minyard@acm.org>,
 Mauro Carvalho Chehab <mchehab@infradead.org>, linaro-mm-sig@lists.linaro.org,
 linux-gpio@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org, Tony Luck <tony.luck@intel.com>,
 Cornelia Huck <cohuck@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrea Parri <andrea.parri@amarulasolutions.com>, linux-pci@vger.kernel.org,
 Akira Yokosawa <akiyks@gmail.com>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 platform-driver-x86@vger.kernel.org,
 "Paul E. McKenney" <paulmck@linux.ibm.com>, Jonathan Corbet <corbet@lwn.net>,
 Kishon Vijay Abraham I <kishon@ti.com>, Peter Zijlstra <peterz@infradead.org>,
 Emese Revfy <re.emese@gmail.com>, Darren Hart <dvhart@infradead.org>,
 Jade Alglave <j.alglave@ucl.ac.uk>, "Serge
 E. Hallyn" <serge@hallyn.com>, Fenghua Yu <fenghua.yu@intel.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Ning Sun <ning.sun@intel.com>, Borislav Petkov <bp@alien8.de>,
 Luc Maranget <luc.maranget@inria.fr>,
 Kurt Schwemmer <kurt.schwemmer@microsemi.com>, Guan Xuetao <gxt@pku.edu.cn>,
 linux-parisc@vger.kernel.org, iommu@lists.linux-foundation.org,
 Stuart Hayes <stuart.w.hayes@gmail.com>, Logan Gunthorpe <logang@deltatee.com>,
 Andreas =?UTF-8?B?RsOkcmJlcg==?= <afaerber@suse.de>,
 Rich Felker <dalias@libc.org>, kvm@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Jerry Hoemann <jerry.hoemann@hpe.com>, David Howells <dhowells@redhat.com>,
 linux-mm@kvack.org, Kirti Wankhede <kwankhede@nvidia.com>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Steffen Klassert <steffen.klassert@secunet.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@redhat.com>,
 devicetree@vger.kernel.org, Daniel Lustig <dlustig@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-block@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Jens Axboe <axboe@kernel.dk>,
 netdev@vger.kernel.org, linux-security-module@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Johannes Berg <johannes@sipsolutions.net>,
 Robin Murphy <robin.murphy@arm.com>, Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Em Wed, 24 Apr 2019 08:52:09 +0200
Peter Zijlstra <peterz@infradead.org> escreveu:

> On Tue, Apr 23, 2019 at 11:38:16PM +0200, Borislav Petkov wrote:
> > If that is all the changes it would need, then I guess that's ok. Btw,
> > those rst-conversion patches don't really show what got changed. Dunno
> > if git can even show that properly. I diffed the two files by hand to
> > see what got changed, see end of mail.  
> 
> That is not a happy diff; that table has gotten waay worse to read due
> to all that extra table crap.

Not that I'm proposing such change, but, as a reference, I just discovered 
today that there's a way to make it even lighter than it is while still
showing it as a table:

=================  ======== ==   ================  ===== ==  ===========================================================
    Start addr        Offset        End addr         Size    VM area description
-----------------  -----------   ----------------  --------  -----------------------------------------------------------
 0000000000000000      0         00007fffffffffff    128 TB   user-space virtual memory, different per mm

 0000800000000000   +128    TB   ffff7fffffffffff   ~16M TB   ... huge, almost 64 bits wide hole of non-canonical
                                                                  virtual memory addresses up to the -128 TB
                                                                  starting offset of kernel mappings.

-----------------  -------- --   ----------------  ----- --  -----------------------------------------------------------
-                                                            Kernel-space virtual memory, shared between all processes:
-----------------  -----------   ----------------  --------  -----------------------------------------------------------

 ffff800000000000   -128    TB   ffff87ffffffffff      8 TB   ... guard hole, also reserved for hypervisor
 ffff880000000000   -120    TB   ffff887fffffffff    0.5 TB   LDT remap for PTI
 ffff888000000000   -119.5  TB   ffffc87fffffffff     64 TB   direct mapping of all physical memory (page_offset_base)
 ffffc88000000000    -55.5  TB   ffffc8ffffffffff    0.5 TB   ... unused hole
 ffffc90000000000    -55    TB   ffffe8ffffffffff     32 TB   vmalloc/ioremap space (vmalloc_base)
 ffffe90000000000    -23    TB   ffffe9ffffffffff      1 TB   ... unused hole
 ffffea0000000000    -22    TB   ffffeaffffffffff      1 TB   virtual memory map (vmemmap_base)
 ffffeb0000000000    -21    TB   ffffebffffffffff      1 TB   ... unused hole
 ffffec0000000000    -20    TB   fffffbffffffffff     16 TB   KASAN shadow memory
-----------------  -------- --   ----------------  ----- --  -----------------------------------------------------------
-                                                            Identical layout to the 56-bit one from here on:
-----------------  -----------   ----------------  --------  -----------------------------------------------------------

 fffffc0000000000     -4    TB   fffffdffffffffff      2 TB   ... unused hole
                                                              vaddr_end for KASLR
 fffffe0000000000     -2    TB   fffffe7fffffffff    0.5 TB   cpu_entry_area mapping
 fffffe8000000000     -1.5  TB   fffffeffffffffff    0.5 TB   ... unused hole
 ffffff0000000000     -1    TB   ffffff7fffffffff    0.5 TB   %esp fixup stacks
 ffffff8000000000   -512    GB   ffffffeeffffffff    444 GB   ... unused hole
 ffffffef00000000    -68    GB   fffffffeffffffff     64 GB   EFI region mapping space
 ffffffff00000000     -4    GB   ffffffff7fffffff      2 GB   ... unused hole
 ffffffff80000000     -2    GB   ffffffff9fffffff    512 MB   kernel text mapping, mapped to physical address 0
 ffffffff80000000  -2048    MB
 ffffffffa0000000  -1536    MB   fffffffffeffffff   1520 MB   module mapping space
 ffffffffff000000    -16    MB
    FIXADDR_START   ~-11    MB   ffffffffff5fffff   ~0.5 MB   kernel-internal fixmap range, variable size and offset
 ffffffffff600000    -10    MB   ffffffffff600fff      4 kB   legacy vsyscall ABI
 ffffffffffe00000     -2    MB   ffffffffffffffff      2 MB   ... unused hole
=================  ======== ==   ================  ===== ==  ===========================================================

If one wants the table headers as such, an extra line is required:


=================  ======== ==   ================  ===== ==  ===========================================================
    Start addr        Offset        End addr         Size    VM area description
-----------------  -----------   ----------------  --------  -----------------------------------------------------------
=================  ======== ==   ================  ===== ==  ===========================================================

<snip/>

=================  ======== ==   ================  ===== ==  ===========================================================


The output using this approach and a markup to use mono-spaced cells
e. g. either using ..raw or using .. cssclass as commented before in
this thread is at:

	https://www.infradead.org/~mchehab/rst_conversion/x86/x86_64/mm_alternative.html

Just converted the first table, keeping the other as a literal block.

Thanks,
Mauro


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
