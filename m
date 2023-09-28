Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D8F7B2108
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Sep 2023 17:21:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qlspM-0002W8-3L;
	Thu, 28 Sep 2023 15:21:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <song@kernel.org>) id 1qlspK-0002W1-HQ
 for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Sep 2023 15:21:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bJkaikDZ9lFBM8SxhBIiePHUkbMdixCAWnDe0NiDWXk=; b=KU+4u36RLdrsY6oLI8WUyiwAdj
 7JyIzesPOZFtpvj5hwdzTFH9O5xiNGAmAWsk5+VdxyFxEGBpVcfgvFsrem2BSX9XWfc2PdrBs3Q6f
 yuB0d49epn7GepRiOXY9rB8IOi+YlfMSK35PIRc1uOxnMNVbHriBom9p5fhCAq3VgrD4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bJkaikDZ9lFBM8SxhBIiePHUkbMdixCAWnDe0NiDWXk=; b=fTzK5DS1RLnpaO2lk8MchFPE7k
 rVc4GiboEjMmZlONIyWbLAzER4zA/+8/LzcBEEfUV2Bn+iD/ZPjujZKu8fWIbnexHaIr8f8mZkPx1
 PwN46tQmz3Dd+Oa7QkfKR/3Y6IbaNKpwkACzV03gsseug/hgk5nwZh8gmopiwEy0QVvw=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qlspH-0004Iq-UJ for openipmi-developer@lists.sourceforge.net;
 Thu, 28 Sep 2023 15:21:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 83E7DCE2209
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 28 Sep 2023 15:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9196C433CB
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 28 Sep 2023 15:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1695914468;
 bh=5QGsjlLA6+fSdsYbT2wgVXCyV5RBnz+gCDO8qtKxudM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=gY6bnbm4Br2Su1APlGkn1sEu4r+c6sdQLDsonp71NsJQbUQraKl8xXh9rGZORDHDX
 1QshNOkVFu0tNkDMf36lbn30zkyYzhLTGnPTXNjw1k+PIvKKZGUYxKQ7wvRHp1f4Yx
 zc21t6uxwYapN/InHw4nKU1MlE+GefjFMudIrCx51jeRHViIFjwTYbeCQ0LaQLHNDy
 K6pRADykVVDDE9WhFVGCoH8yaA4fYcRbfTjd6dVfgkxkaTlBtpIRkVKRbieDzAxAlu
 +hjpSkHGs3H12owDA6PgfqSF8KGYMJHSlAYsT2GtXigCu2wgFul2znYOe2oL1/yATw
 HlBza/JCHsDzg==
Received: by mail-wm1-f43.google.com with SMTP id
 5b1f17b1804b1-40528376459so134027575e9.3
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 28 Sep 2023 08:21:08 -0700 (PDT)
X-Gm-Message-State: AOJu0YyycMgZU/AAFG3vkwdGNhalVbXbW04KJzRijTnnVxfUEQLmJdoN
 wqF/lNkixViyVeurXt6srwl5JGxyJ+Ne6lBiAo0=
X-Google-Smtp-Source: AGHT+IFGxnL1jLxRJ82JHSkotXT+AJQbGwcj+NsBF8Wdz/LihQ1gwaw7yDfPbhv4CL9qBIGKh5TUPhf228x9wFIkjTk=
X-Received: by 2002:a05:6512:1595:b0:500:b828:7a04 with SMTP id
 bp21-20020a056512159500b00500b8287a04mr1542995lfb.18.1695914446757; Thu, 28
 Sep 2023 08:20:46 -0700 (PDT)
MIME-Version: 1.0
References: <20230928-jag-sysctl_remove_empty_elem_drivers-v1-0-e59120fca9f9@samsung.com>
 <65157da7.5d0a0220.13b5e.9e95SMTPIN_ADDED_BROKEN@mx.google.com>
In-Reply-To: <65157da7.5d0a0220.13b5e.9e95SMTPIN_ADDED_BROKEN@mx.google.com>
From: Song Liu <song@kernel.org>
Date: Thu, 28 Sep 2023 08:20:34 -0700
X-Gmail-Original-Message-ID: <CAPhsuW6WRen7Udqc+O+haAH8PZXH2jYdpUj1X7UCuQYngVWxoA@mail.gmail.com>
Message-ID: <CAPhsuW6WRen7Udqc+O+haAH8PZXH2jYdpUj1X7UCuQYngVWxoA@mail.gmail.com>
To: j.granados@samsung.com
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Sep 28, 2023 at 6:20 AM Joel Granados via B4 Relay
    <devnull+j.granados.samsung.com@kernel.org> wrote: > > From: Joel Granados
    <j.granados@samsung.com> > > This commit comes at the tail end o [...] 
 
 Content analysis details:   (-2.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [145.40.73.55 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qlspH-0004Iq-UJ
Subject: Re: [Openipmi-developer] [PATCH 13/15] raid: Remove now superfluous
 sentinel element from ctl_table array
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
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>, Steve Wahl <steve.wahl@hpe.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Clemens Ladisch <clemens@ladisch.de>, linux-hyperv@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Phillip Potter <phil@philpotter.co.uk>,
 Eric Dumazet <edumazet@google.com>, "K. Y. Srinivasan" <kys@microsoft.com>,
 Jiri Slaby <jirislaby@kernel.org>, Russ Weight <russell.h.weight@intel.com>,
 Wei Liu <wei.liu@kernel.org>, Stefano Stabellini <sstabellini@kernel.org>,
 Corey Minyard <minyard@acm.org>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, David Airlie <airlied@gmail.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Dexuan Cui <decui@microsoft.com>,
 willy@infradead.org, Jason Gunthorpe <jgg@ziepe.ca>,
 linux-serial@vger.kernel.org, Doug Gilbert <dgilbert@interlog.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Haiyang Zhang <haiyangz@microsoft.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, intel-gfx@lists.freedesktop.org,
 josh@joshtriplett.org, Jani Nikula <jani.nikula@linux.intel.com>,
 linux-raid@vger.kernel.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 xen-devel@lists.xenproject.org, openipmi-developer@lists.sourceforge.net,
 Juergen Gross <jgross@suse.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Theodore Ts'o <tytso@mit.edu>,
 linux-scsi@vger.kernel.org, "Martin K. Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Ahern <dsahern@kernel.org>, Robin Holt <robinmholt@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 netdev@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVGh1LCBTZXAgMjgsIDIwMjMgYXQgNjoyMOKAr0FNIEpvZWwgR3JhbmFkb3MgdmlhIEI0IFJl
bGF5CjxkZXZudWxsK2ouZ3JhbmFkb3Muc2Ftc3VuZy5jb21Aa2VybmVsLm9yZz4gd3JvdGU6Cj4K
PiBGcm9tOiBKb2VsIEdyYW5hZG9zIDxqLmdyYW5hZG9zQHNhbXN1bmcuY29tPgo+Cj4gVGhpcyBj
b21taXQgY29tZXMgYXQgdGhlIHRhaWwgZW5kIG9mIGEgZ3JlYXRlciBlZmZvcnQgdG8gcmVtb3Zl
IHRoZQo+IGVtcHR5IGVsZW1lbnRzIGF0IHRoZSBlbmQgb2YgdGhlIGN0bF90YWJsZSBhcnJheXMg
KHNlbnRpbmVscykgd2hpY2gKPiB3aWxsIHJlZHVjZSB0aGUgb3ZlcmFsbCBidWlsZCB0aW1lIHNp
emUgb2YgdGhlIGtlcm5lbCBhbmQgcnVuIHRpbWUKPiBtZW1vcnkgYmxvYXQgYnkgfjY0IGJ5dGVz
IHBlciBzZW50aW5lbCAoZnVydGhlciBpbmZvcm1hdGlvbiBMaW5rIDoKPiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9hbGwvWk81WXg1SkZvZ0dpJTJGY0JvQGJvbWJhZGlsLmluZnJhZGVhZC5vcmcv
KQo+Cj4gUmVtb3ZlIHNlbnRpbmVsIGZyb20gcmFpZF90YWJsZQo+Cj4gU2lnbmVkLW9mZi1ieTog
Sm9lbCBHcmFuYWRvcyA8ai5ncmFuYWRvc0BzYW1zdW5nLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9t
ZC9tZC5jIHwgMyArLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0
aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWQvbWQuYyBiL2RyaXZlcnMvbWQvbWQu
Ywo+IGluZGV4IGExMDRhMDI1MDg0ZC4uMzg2NmQ4Zjc1NGEwIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvbWQvbWQuYwo+ICsrKyBiL2RyaXZlcnMvbWQvbWQuYwo+IEBAIC0zMDQsOCArMzA0LDcgQEAg
c3RhdGljIHN0cnVjdCBjdGxfdGFibGUgcmFpZF90YWJsZVtdID0gewo+ICAgICAgICAgICAgICAg
ICAubWF4bGVuICAgICAgICAgPSBzaXplb2YoaW50KSwKPiAgICAgICAgICAgICAgICAgLm1vZGUg
ICAgICAgICAgID0gU19JUlVHT3xTX0lXVVNSLAo+ICAgICAgICAgICAgICAgICAucHJvY19oYW5k
bGVyICAgPSBwcm9jX2RvaW50dmVjLAo+IC0gICAgICAgfSwKPiAtICAgICAgIHsgfQo+ICsgICAg
ICAgfQo+ICB9OwoKUGxlYXNlIGtlZXAgIn0sIiBhcyBHcmVnIHN1Z2dlc3RlZC4gT3RoZXJ3aXNl
LAoKQWNrZWQtYnk6IFNvbmcgTGl1IDxzb25nQGtlcm5lbC5vcmc+CgpUaGFua3MsClNvbmcKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1k
ZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3Blbmlw
bWktZGV2ZWxvcGVyCg==
