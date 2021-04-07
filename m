Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7F335654E
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Apr 2021 09:34:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lU2hc-0004I9-6g; Wed, 07 Apr 2021 07:34:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1lU2hX-0004He-Kv
 for openipmi-developer@lists.sourceforge.net; Wed, 07 Apr 2021 07:34:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QvZSBrH1kmgxKZKSD+pBe7YtJvXFi8yG9kfTKSmsc5Q=; b=AQJxUrPHzH0cDVgYBIlP3PkvnL
 ReIKdClfTstvpzJlchgy62mce0tBR+ipWiEA4/faLZusiaYIe2vAD/x6MMqZiSFJ6CCFgo615LE1c
 ZQPYGzVj2u6r+QoaWQWDmpVO5H90qMlgo3lSnrUPibFAeUrwIodJoLOezxbyyygMVqZg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QvZSBrH1kmgxKZKSD+pBe7YtJvXFi8yG9kfTKSmsc5Q=; b=h7KWT4t5AFxWgoVa0jg+Y+zver
 511PQWJgV3UkkunHQTL5I8Y0sEB63sDa7xTtLjWMJ7Tnlt9a4BZKIr8fcMxapMO4DimCtKf5uBqk1
 oWBbseFutOfEDr0ZmxO/P3zo3nJX0CEPa+y6i6ryEmO1iDRnBmHXycir1Qb0iCXE7SGw=;
Received: from mail-pl1-f169.google.com ([209.85.214.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lU2hT-0005vU-7I
 for openipmi-developer@lists.sourceforge.net; Wed, 07 Apr 2021 07:34:11 +0000
Received: by mail-pl1-f169.google.com with SMTP id l1so8887847plg.12
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 07 Apr 2021 00:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QvZSBrH1kmgxKZKSD+pBe7YtJvXFi8yG9kfTKSmsc5Q=;
 b=O2cXbe0TlOnka3Htg7a7ktCEm4u84Apnd4pxAh+QckwGH1N5XUJxAQXGojK8urTwHW
 S6qKShLuqQpXW7czN7NSppj8uMSG1ILItUs2jRqW9KCOM0ewsGPs471AJdd9fQwkregx
 5WJsKLnvvgP9H/rO+GMThc5QqAWIM6vJUjUihrVpN1qBZ1PZrQQurpb3jy0hrvC8q/ga
 193Hbzqy2uMvrG2DBivJBITDOAFTPHgkYrA0xxTN2O5/SDYNzxk8E+F9Ofv4wPxpKtYd
 OpyTo6+F49K8x0yWEkTWuqKF3gTonWd9jxsyeBFNYymfsKPd0N1ZAJ/ruwq0yRVkpYX5
 /xXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QvZSBrH1kmgxKZKSD+pBe7YtJvXFi8yG9kfTKSmsc5Q=;
 b=r/GLpSwuyfIhGFRkBWLxQ49TUqDyjI42xdF7TNgsf57izpRPElSvS9H2TBOKkcOxS/
 svp4zqCl9ceO7owiRvS7tNVLuzeW3BLmCGxTzC0q62k+205dUGHFcHKxi46CdKQxLzu0
 3vqik6ynRsUJv0W+YGfSoAPVie+Cv7MDD08bqFfE4ms057YcSzFuXCfujh4pfYNuuW5V
 24qvAvsQKJaWliN51JO664hwd4/oHBa//aftg80/YpvE7X3YbFJDn3o7RtlzwHWR1eOo
 CclIvMHajAFQllwQBgpr+XgoLO7w4mQhYLSF4G/bYNg77TuhJG4EaZyze6xbZTIEdnfB
 DYEg==
X-Gm-Message-State: AOAM530bF/J00nPI9o0SKCpPaI+P+D89qT99F7HKMmGFonoc0eQL21e+
 T1sc/gq+B7F2XJYbEM57aiIX5d63BGr8C32G0GQ=
X-Google-Smtp-Source: ABdhPJyRMoGPnuz4MO0FmGOHIM1XSyhsQpJQrKhPLw79y8VziNPPVSJYtRew3BRLtYZwwl4H1BLduTLJZdkCaUCy8qY=
X-Received: by 2002:a17:902:a406:b029:e6:78c4:71c8 with SMTP id
 p6-20020a170902a406b02900e678c471c8mr1880447plq.17.1617780840716; Wed, 07 Apr
 2021 00:34:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210406133158.73700-1-andriy.shevchenko@linux.intel.com>
 <20210406165108.GA4332@42.do-not-panic.com>
In-Reply-To: <20210406165108.GA4332@42.do-not-panic.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 7 Apr 2021 10:33:44 +0300
Message-ID: <CAHp75Ve9vBQqSegM2-ch9NUN-MdevxxOs5ZdHkk1W7AacN+Wrw@mail.gmail.com>
To: Luis Chamberlain <mcgrof@kernel.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.169 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.169 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lU2hT-0005vU-7I
Subject: Re: [Openipmi-developer] [PATCH v1 1/1] kernel.h: Split out panic
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
Cc: Corey Minyard <cminyard@mvista.com>,
 Linux on Hyper-V List <linux-hyperv@vger.kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-remoteproc@vger.kernel.org, Michael Kelley <mikelley@microsoft.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Thomas Gleixner <tglx@linutronix.de>,
 Linux-Arch <linux-arch@vger.kernel.org>, Wei Liu <wei.liu@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Corey Minyard <minyard@acm.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Iurii Zaikin <yzaikin@google.com>,
 Ohad Ben-Cohen <ohad@wizery.com>, Joerg Roedel <jroedel@suse.de>,
 Kees Cook <keescook@chromium.org>, "Paul E. McKenney" <paulmck@kernel.org>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Josh Triplett <josh@joshtriplett.org>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>, rcu@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, openipmi-developer@lists.sourceforge.net,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Vlastimil Babka <vbabka@suse.cz>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Eric Biederman <ebiederm@xmission.com>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "open list:LINUX FOR POWERPC PA SEMI PWRFICIENT"
 <linuxppc-dev@lists.ozlabs.org>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Apr 7, 2021 at 10:25 AM Luis Chamberlain <mcgrof@kernel.org> wrote:
>
> On Tue, Apr 06, 2021 at 04:31:58PM +0300, Andy Shevchenko wrote:
> > diff --git a/include/linux/panic_notifier.h b/include/linux/panic_notifier.h
> > new file mode 100644
> > index 000000000000..41e32483d7a7
> > --- /dev/null
> > +++ b/include/linux/panic_notifier.h
> > @@ -0,0 +1,12 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +#ifndef _LINUX_PANIC_NOTIFIERS_H
> > +#define _LINUX_PANIC_NOTIFIERS_H
> > +
> > +#include <linux/notifier.h>
> > +#include <linux/types.h>
> > +
> > +extern struct atomic_notifier_head panic_notifier_list;
> > +
> > +extern bool crash_kexec_post_notifiers;
> > +
> > +#endif       /* _LINUX_PANIC_NOTIFIERS_H */
>
> Why is it worth it to add another file just for this?

The main point is to break tons of loops that prevent having clean
headers anymore.

In this case, see bug.h, which is very important in this sense.

>  Seems like a very
> small file.

If it is an argument, it's kinda strange. We have much smaller headers.

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
