Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAC0F5EB8
	for <lists+openipmi-developer@lfdr.de>; Sat,  9 Nov 2019 12:23:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iTOq2-0008NW-Fe; Sat, 09 Nov 2019 11:23:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <arnd@arndb.de>) id 1iTOq1-0008NP-8z
 for openipmi-developer@lists.sourceforge.net; Sat, 09 Nov 2019 11:23:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JEecMRdg7yPD3xKAqadeheuChc4hf25102l04dR8DnI=; b=QUqH4Z+KUFI+izmj3vPam1e2Nm
 296oc9mOuaBUffs2yn8yDh+Os2yl3kACBDOuwD7OexBkjEb7nALIgzo6ouJQdgn3ad9iICm8+5cUr
 h0SXfnQnMrEvpQr0cDNAVCrirEBHKGQd4U4aiU9lh8JDcbNeP7c5A88up4+eYJ8Aj0zw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JEecMRdg7yPD3xKAqadeheuChc4hf25102l04dR8DnI=; b=bZEjD+OvoOrfq8BgmFVJNBK1uF
 WZNLZhIXlsuajNJUmwh+oHsimHvbjAVgpbRkqE70vSC0yxcxZasxUxtaMxW5NxPIElyPEom/UwFDv
 58znlm8RDI1UMwnyWQHEjBE76emG6FCTyPMGufuiOpIFPM9Iqml9MiYdwU6uv1BSvEds=;
Received: from mout.kundenserver.de ([217.72.192.75])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1iTOpx-0094uv-BV
 for openipmi-developer@lists.sourceforge.net; Sat, 09 Nov 2019 11:23:29 +0000
Received: from mail-qv1-f47.google.com ([209.85.219.47]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MpUpW-1i8MI62PYi-00ptrT for <openipmi-developer@lists.sourceforge.net>;
 Sat, 09 Nov 2019 12:23:18 +0100
Received: by mail-qv1-f47.google.com with SMTP id d3so1663312qvs.11
 for <openipmi-developer@lists.sourceforge.net>;
 Sat, 09 Nov 2019 03:23:18 -0800 (PST)
X-Gm-Message-State: APjAAAWxrmH8lsKgy/i1aEnF0DC32t7fSDRqhZmt9HfjDHm2l+UR4ODh
 ofa7VVact1MlwjLL33aGpG4T7hwe46ESxqasL24=
X-Google-Smtp-Source: APXvYqxxAB77c1YarMqQdoEc116g4WeXnOa8DZQ7HV6fruKuOW8GnDi/TVEJOqSzKvF7NaC1YPkjzWf2ZVpdN8LJltQ=
X-Received: by 2002:a0c:d0e1:: with SMTP id b30mr14789374qvh.197.1573298597443; 
 Sat, 09 Nov 2019 03:23:17 -0800 (PST)
MIME-Version: 1.0
References: <20191108203435.112759-1-arnd@arndb.de>
 <20191108203435.112759-5-arnd@arndb.de>
 <20191108221106.GT10313@minyard.net>
In-Reply-To: <20191108221106.GT10313@minyard.net>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 9 Nov 2019 12:23:00 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3BybzufBLVr-n5hCuxOt-MK=0qs9F7b3DYhZ58jiv7vw@mail.gmail.com>
Message-ID: <CAK8P3a3BybzufBLVr-n5hCuxOt-MK=0qs9F7b3DYhZ58jiv7vw@mail.gmail.com>
To: cminyard@mvista.com
X-Provags-ID: V03:K1:fTBQ6x+cFyIoRevRoiYmWksyP236bXWNXdo6CuMMzpqQ5shNOuB
 wpiMIH+oX4bIk+KAEQainXzi4qRhRRPmZNYftg/CphAJrOzRyM39BpD0CrAk0gXeE/pwgpM
 a+V0ShRjPQFaniJ/Gqq99ndwSx7GbpPxRFotxg0eCc6w0atk+kP6hkRC7AdRGUYtvQLLn55
 KB/QIBy6BHHfAJclJR1bw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2EdUkJ+QNEU=:OtbI0L/pSSRjxgUda+DHYR
 +tv23bVGeHDc2Nf+Ocs9TFsS+ArHotPCtj6V8tqINMb4NeNDtBWdNrLCrHUxol9heBV1g435A
 QYHD/4KY73mJ8ETarKIdKfO6N2L/ZBrKS+hNV9PHtSX15ekH9Xspi38bRG2WjlFsi0ZEIVcEV
 ZKruBisMw4bxxjXpG4Gx9IELjGeh4z7qOd7Hn/QVqbQw1HCYxBWdpChcdATrJzYnFfQLWn6UJ
 J3e3/iJvyLnbmfVJPoQUac9YDDlDnwR5EZvWKCJZnYvFk8m8bnWaH0qWeocxBOecR5kJEq3xn
 ZNyUpJr76oRimcAzMgopCdL0hLO94rWkSL2Ez6JOctTueq3lk+/jTlnrhcazp2tF9dZnlbpGI
 rL1W+mH9l0DDqdlDZbiiDqr/KKl5UxdWIlpm7fQlGli0koOLKEK7szZf75IX1sDlGKY9ZxQt+
 SvLVWWoUWt2Lns+Bv9rnvb/ki8/JO/pVHns37IXZ1xWcAVu6wDlIJ7GslV94pFlvU7qJowGCO
 DPTUT8RIbzcboott2facgW24HzColsSx3rNMmAXcmewl5gKuarNxIBbsuBp6IuXD5i4Aq9pnd
 bu8rXFdEBwe136i5oABJ1rXe9mPSIUVqt+smlBrba8pVPP7r/HYOWZP30ZDp6z3dP1SZjNOKZ
 bSZVxQY+pVZzi6hpLSVw8VX5gyzeYRCHZPnthKvO8zfqOGsisO22NZkduqPO3QCwGfZymz5j3
 Emr4B7vjnEPHjRRtH5o6kX/MI1yzr7Ajfo1GVEd/in2nz89MJs/jtj2NLAHkbjzpMU9yVJhJi
 +NSh3Xpio0FR8pgcFkZH3MmsFTFiNburOGJ7alDT6aUIsldxoDkqEkCsqIFgzB8a44NfnX3Ir
 ErFogP8lRT8j/eBE3Vkg==
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iTOpx-0094uv-BV
Subject: Re: [Openipmi-developer] [PATCH 4/8] ipmi: kill off 'timespec'
 usage again
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
Cc: y2038 Mailman List <y2038@lists.linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Nov 8, 2019 at 11:11 PM Corey Minyard <cminyard@mvista.com> wrote:
>
> On Fri, Nov 08, 2019 at 09:34:27PM +0100, Arnd Bergmann wrote:
> > 'struct timespec' is getting removed from the kernel. The usage in ipmi
> > was fixed before in commit 48862ea2ce86 ("ipmi: Update timespec usage
> > to timespec64"), but unfortunately it crept back in.
> >
> > The busy looping code can better use ktime_t anyway, so use that
> > there to simplify the implementation.
>
> Thanks, this is a big improvement.  I have this queued, but if you
> are going to submit this, I can remove it, and:
>
> Reviewed-by: Corey Minyard <cminyard@mvista.com>

I'd prefer to have this go through your tree, one less thing for me
to worry about (out of the 90 patches).

> Do you think this should go in to 5.4?

Up to you, it probably depends on how well you can test that the change
is correct beyond the review.

       Arnd


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
