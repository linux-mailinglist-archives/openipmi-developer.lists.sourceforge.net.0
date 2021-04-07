Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8230356F8E
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Apr 2021 17:00:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lU9ew-0002ss-FF; Wed, 07 Apr 2021 14:59:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andy.shevchenko@gmail.com>) id 1lU9eu-0002sg-8J
 for openipmi-developer@lists.sourceforge.net; Wed, 07 Apr 2021 14:59:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r/d1grSpme2mQqHlJWH4I0IMbDUguqI3gCUkY5Nr1Q4=; b=QBKoK9Hhr/OdGt72rAISOAHLoS
 kpBpb7+whYcn9Wc0a1SkrPYlAXySZjkKZR19qbIjyjGDptD5SE1qZf+OriHaZoI6++KIE7JU0dzzn
 DfAB+CHvsPxJEPxm11NRUwxIdcnzY13s2oI2K+gKnxu09++fhu7p0j2iJsn5CMLXsMsE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r/d1grSpme2mQqHlJWH4I0IMbDUguqI3gCUkY5Nr1Q4=; b=E0RkUZ56jlzUXURYri0klBD8Xb
 TDQ8q6YJGxjaWsUaRtvpXA8vAy4vFpF1GNWu7RC3evqi6bBsDt7Wd9LeyPaxFV1v2UBu9ZtZK3FpN
 oPX7h7ZxvM2h9opLHDOZgJg5tJjOzeQVg6KCImIdPMns15/sP/zGI9NjEAY0DPpZCaS4=;
Received: from mail-pg1-f182.google.com ([209.85.215.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lU9ef-00061l-Mo
 for openipmi-developer@lists.sourceforge.net; Wed, 07 Apr 2021 14:59:56 +0000
Received: by mail-pg1-f182.google.com with SMTP id q10so13269696pgj.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 07 Apr 2021 07:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r/d1grSpme2mQqHlJWH4I0IMbDUguqI3gCUkY5Nr1Q4=;
 b=fYy1lWNPXiQ+yb67ebJZu+8zEC+h0pBnsXArakBNChEkh6CjoRMYl72lknBCAuRuX2
 jxuH9EpzzGDSCJWIUX2Ng7q0y9vsIP4Zr+Ek6u4yFt20hudhezjO5DOYAIxN+UZB5hMM
 FswWwQr3PpOF1lHlMFl2SjtB1/0Fx4MrlsWZAZT4dZpOxE8in8RosRGUfdrKX/M6x4Fq
 inZiwEl3DvszVRA5j32WLhIZYUUNpVuXdnve6hiU7XgFQUrk2IG/GFnBcXcqK58X9Wrd
 bbLLNR2m9dcbokFkoo+uH9b1jOTr6jOD6OdvmDZN/EImsXC0vxwvNHIMR6Dr2vU22cdq
 YTtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r/d1grSpme2mQqHlJWH4I0IMbDUguqI3gCUkY5Nr1Q4=;
 b=rUgdw+KHhty02peF59dYbxd9TFxk/cdSx4cyGwqFDKmLRJ9G2CdATbrZrI9vK9r4+Y
 jfoXXt2c3eGRvspiO6DZlSGIQjXbs3Wig2hYBGmyq/oBg2s+loqOlqGAE+RF9nDOmIl6
 K7DnVMNiWzboz/C26QjYggaE7PmVE0S8OcZ1jqBjucBX5CH6fbF+JV0ebfHIHlKPPca3
 BnipfNf2cgqjGnOLYdE11iFx6uZkJ0Bv/bxl3lkasbi/P5Sw0Znnf5ApLeTcFhcjJ67e
 5HLoMROTA+rq4vVA8v+jU1ABAve0YtmV0XnYLEXpfQXqbfRZZILSGe9G950SvutIvApK
 gghw==
X-Gm-Message-State: AOAM530+0zfIKbODWNO1NLbRWEmWo9AHYt0YszQWvo8b86O9EdPSxqkG
 Go+cyJvbT5LkDUTWFu5CIpheodzAqUfZClNmZU4=
X-Google-Smtp-Source: ABdhPJyU4xbKR/hTcJT3i+4AmcxOkV7rwYOr2kWTFFANFENce/N3tHTgLI14O9XHpuyAeqcD9v6uZo0Kn/Dprv2XBvs=
X-Received: by 2002:a62:528e:0:b029:1f5:c5ee:a487 with SMTP id
 g136-20020a62528e0000b02901f5c5eea487mr3114076pfb.7.1617807575856; Wed, 07
 Apr 2021 07:59:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210406133158.73700-1-andriy.shevchenko@linux.intel.com>
 <20210406165108.GA4332@42.do-not-panic.com>
 <CAHp75Ve9vBQqSegM2-ch9NUN-MdevxxOs5ZdHkk1W7AacN+Wrw@mail.gmail.com>
 <20210407143040.GB4332@42.do-not-panic.com>
In-Reply-To: <20210407143040.GB4332@42.do-not-panic.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 7 Apr 2021 17:59:19 +0300
Message-ID: <CAHp75VeXiLa0b49eoZKVR1DSqTc9hKxpSgy294hMiaUzt0ugOA@mail.gmail.com>
To: Luis Chamberlain <mcgrof@kernel.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (andy.shevchenko[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.182 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.182 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1lU9ef-00061l-Mo
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

On Wed, Apr 7, 2021 at 5:30 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
> On Wed, Apr 07, 2021 at 10:33:44AM +0300, Andy Shevchenko wrote:
> > On Wed, Apr 7, 2021 at 10:25 AM Luis Chamberlain <mcgrof@kernel.org> wrote:
> > > On Tue, Apr 06, 2021 at 04:31:58PM +0300, Andy Shevchenko wrote:

...

> > > Why is it worth it to add another file just for this?
> >
> > The main point is to break tons of loops that prevent having clean
> > headers anymore.
> >
> > In this case, see bug.h, which is very important in this sense.
>
> OK based on the commit log this was not clear, it seemed more of moving
> panic stuff to its own file, so just cleanup.

Sorry for that. it should have mentioned the kernel folder instead of
lib. But I think it won't clarify the above.

In any case there are several purposes in this case
 - dropping dependency in bug.h
 - dropping a loop by moving out panic_notifier.h
 - unload kernel.h from something which has its own domain

I think that you are referring to the commit message describing 3rd
one, but not 1st and 2nd.

I will amend this for the future splits, thanks!

> > >  Seems like a very
> > > small file.
> >
> > If it is an argument, it's kinda strange. We have much smaller headers.
>
> The motivation for such separate file was just not clear on the commit
> log.

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
