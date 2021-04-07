Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE29356726
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Apr 2021 10:47:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lU3q8-0003hE-1C; Wed, 07 Apr 2021 08:47:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <andy.shevchenko@gmail.com>) id 1lU3q6-0003h6-FK
 for openipmi-developer@lists.sourceforge.net; Wed, 07 Apr 2021 08:47:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NZttKhZHU6qaVsRmUnPJpvZt0Hi/pFu56dbeZNbDXtU=; b=grpHUUit4Gxx6yPiZCcbYQggmv
 pukPKMB7S+MtE+BcoTUOmTTdK/X1sg5ek7mcgsSdXYAV3FVkiNs3sa/V3GzT5kgFk310GNHyNgf8R
 g0lxGLe8ex3QU/XCzHq3KrU5Q3UK4EgDDhxIdmWNQ4J8XZ9oAqNmIwyWN1DRro906cas=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NZttKhZHU6qaVsRmUnPJpvZt0Hi/pFu56dbeZNbDXtU=; b=H4WIsgT8OuX6xU3JakJb3aXB5U
 Q8EYoeRRbib63J+M/fpue42likjsJF3tzLOIoUThFnVb3lgKf9Uctpnvel8+tOh4aqNBgBMPQzZpG
 kqlYvSS4TJOUmSZAfgOcpXuOtktqOWedt0PP6WS7/SjxB6w4I7PPZrXjscQskG4yHoDI=;
Received: from mail-pf1-f170.google.com ([209.85.210.170])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lU3q0-00FMPI-55
 for openipmi-developer@lists.sourceforge.net; Wed, 07 Apr 2021 08:47:05 +0000
Received: by mail-pf1-f170.google.com with SMTP id c17so12393251pfn.6
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 07 Apr 2021 01:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NZttKhZHU6qaVsRmUnPJpvZt0Hi/pFu56dbeZNbDXtU=;
 b=UDQs+QKztlc50Xzz9tDRt+AdeuvS//lqLAuKnWXU/KpkdRIyYns185alJd77pimmOQ
 Rm+SXfRq7Nbp44iFj09DlIBP8pB9Q/wr1Jktw0TsONZCLU6cUjKoAcBW9MELgEDcm9Fe
 pjdoHv/Z1K75roAdGxxxm60OLnxr6B3j/huNdwRUOBcR/NfWwdJ0T2Ry1GSBSm5M8gQG
 cPX3YXLL7dtqUWW4/37Lsyk3k7L76r1KootJDPbDvQIsbhQfbSpG/LRrVUU53kFzKElU
 mZPAf+0lfHR42X+g8hHRO6PYug2sgsVVq7CJaXGQetXBqPCEBbWZWj0if+0XEWIBGBV8
 f3cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NZttKhZHU6qaVsRmUnPJpvZt0Hi/pFu56dbeZNbDXtU=;
 b=TRoeL/K8fmP2stRAcKVVm3UU4hrHy9cPKd4KUj61u33QPkBGSFp8LPNvCxK7he76ql
 wh+irpbMxI/uZBWrAy/SQ3xEZ7Sa+O5Zt9zM+UDlgiLXy0ILdRBzz/GY80h1Khp1WagR
 e+GiWim97hptevG005k14v3DvK4rXa6/gqaPpbmqkM/sUs4xvvkApM5ZgQ6hYxASLK3C
 KsjLkDPQwgst7zi2wDA/IOmOJrxGRvLUbYbMFfgYf0PuFbGF2ZVag8ebSyM5EXZE472f
 8VK+od7P2yW9vSuzg1JpylKPluf/spyrjK87/vaazfRXC3Tu6O5I0add72MuJly3qxm+
 3gjQ==
X-Gm-Message-State: AOAM533Ri2pLnvwp1iMV9wqM7AQwJtSeDkh9lmkUkKlAK0DWrlp4XVWn
 spa46JmGu+bQRrmBVrEMAxsWwxl6dpg5qIl61+I=
X-Google-Smtp-Source: ABdhPJyOREH8pH5Yw3mdnLvelVM7fjh26m8MXKE2FHM7iVCNEkdX6M5hYPv1kbA5tQgLzWX2dL38Pt50r64dgAgPi18=
X-Received: by 2002:a63:3e4b:: with SMTP id l72mr2244351pga.203.1617785213524; 
 Wed, 07 Apr 2021 01:46:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210406133158.73700-1-andriy.shevchenko@linux.intel.com>
 <202104061143.E11D2D0@keescook>
In-Reply-To: <202104061143.E11D2D0@keescook>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 7 Apr 2021 11:46:37 +0300
Message-ID: <CAHp75Ve+11u=dtNTO8BCohOJHGWSMJtb1nGCOrNde7bXaD4ehA@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chromium.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.170 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.170 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lU3q0-00FMPI-55
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
 "Paul E. McKenney" <paulmck@kernel.org>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Josh Triplett <josh@joshtriplett.org>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>, rcu@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, openipmi-developer@lists.sourceforge.net,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Vlastimil Babka <vbabka@suse.cz>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Eric Biederman <ebiederm@xmission.com>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "open list:LINUX FOR POWERPC PA SEMI PWRFICIENT"
 <linuxppc-dev@lists.ozlabs.org>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Apr 7, 2021 at 11:17 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Tue, Apr 06, 2021 at 04:31:58PM +0300, Andy Shevchenko wrote:
> > kernel.h is being used as a dump for all kinds of stuff for a long time.
> > Here is the attempt to start cleaning it up by splitting out panic and
> > oops helpers.
> >
> > At the same time convert users in header and lib folder to use new header.
> > Though for time being include new header back to kernel.h to avoid twisted
> > indirected includes for existing users.
> >
> > Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
>
> I like it! Do you have a multi-arch CI to do allmodconfig builds to
> double-check this?

Unfortunately no, I rely on plenty of bots that are harvesting mailing lists.

But I will appreciate it if somebody can run this through various build tests.

> Acked-by: Kees Cook <keescook@chromium.org>

Thanks!


-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
