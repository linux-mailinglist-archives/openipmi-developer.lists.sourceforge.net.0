Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A6EC2286794
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:42:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEOp-0001gZ-VB; Wed, 07 Oct 2020 18:42:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1kQEOo-0001g7-Aw
 for openipmi-developer@lists.sourceforge.net; Wed, 07 Oct 2020 18:42:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YDpBXnJoTerx8+T5jAMHnGbQNOboeXlSHACsmk65W7I=; b=OcIh7AZvjaopOoQhJfWw0ak3oQ
 W+daGzA/KrMoODyf1szEPaLz7uza9v783q2pysb/ENh9q+tOxvkhx7WdzHa7HneSPHxZ+Xt8lk+kR
 vKVY0DUQ4i9Db+ZC14hXxZFcmG7dG02GX/RtO0ZZcueoyPDHObcaH+ZHrvDKhhQWLK4I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YDpBXnJoTerx8+T5jAMHnGbQNOboeXlSHACsmk65W7I=; b=PA+AdXfZAgFaOGeuHTKzYNQ1pG
 FaFTh9V+twFaU7a/rddVepNA0BD2lnzt2dVDqAUkbDb1g/vPY1MbN0j1eXo+VB6L3n4BSV+DaVyri
 I4+KbVUQhZhlYJV/1uZ5MJ7xRSU+KEeLaUIakl9/vqOAHiL7B5Zzmo5QdliLQw5SAlPY=;
Received: from mail-oo1-f65.google.com ([209.85.161.65])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kQEOi-006MHR-F5
 for openipmi-developer@lists.sourceforge.net; Wed, 07 Oct 2020 18:42:50 +0000
Received: by mail-oo1-f65.google.com with SMTP id o20so877882ook.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 07 Oct 2020 11:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=YDpBXnJoTerx8+T5jAMHnGbQNOboeXlSHACsmk65W7I=;
 b=jfiLkb7t0ApgrVp87Unp47OP6fC9a17SDr+nE37Ypa/GvxVr+yueHMScts1wKkBFQ7
 vQpnp2mGKv7Ab5NA6hnC/fmPvoDSGTKmCh45AjAgqmNvZh6oZCCE4+xq1WLgziT41kgG
 SoogZQ962Rm7LHW23OTUIRciVSotap8BuMCcURUkDitJYqAGM2j6Xp+FIa1IKXNketk1
 TL3wPf79DsgPKloaMtGiCUO6pPNIXVnY5D6ug+w7zI1slIrZDnVI+sAkPHWSN9Eu4Hkc
 e4qjyTbpvBDOo1clxIcBFy4N9pcvFODf76VnHx+w+4MF4MmiC67qwO251KMXTLBPvDGb
 s+Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=YDpBXnJoTerx8+T5jAMHnGbQNOboeXlSHACsmk65W7I=;
 b=cwx5AEQtVpmBYWP3AEg7mOzntTwvJRComV2MCz/HBrb55wpWgOB8FLdjNcMytHmise
 S53o5ZBz5kg6DAvk/Do5oPOU/Dw6pCd3R7wa9P+i8gmkzqV/W8GFOFPNkcFjVv+F0exk
 mjY85xFiCDJNF843nK8w0xACRW//FD/1JN9ZscGwYcYFMZMprONZWDBmMTbLyK2D8SM7
 Pf/mW/38j9MxfilAQb7xNwI+0TdbTQpq+UasSFkjmL1MrPWx+EjElzcDpWtGTlyHrb/D
 808NcTVH3P71eHS4mv8JTJEhjXmVpGPm8CotIXrLD6G7AIQkQbRctJM7GgZHZE5GjjEY
 Jhvw==
X-Gm-Message-State: AOAM531TgQ2zksiQCqZlc0wuhtIjNJ5WLLm1fS0/94DK6dUXOW8wR9SX
 vNctulfDsBTNZucT5SBbnQ==
X-Google-Smtp-Source: ABdhPJwM18zBXzINVtDgaExWbXrJakXdeMycV6E2znfAWhO2S08XGD/MxzZAho7n6PwgFrLkxm9P6Q==
X-Received: by 2002:a4a:4301:: with SMTP id k1mr2906764ooj.92.1602096151671;
 Wed, 07 Oct 2020 11:42:31 -0700 (PDT)
Received: from serve.minyard.net ([47.184.170.156])
 by smtp.gmail.com with ESMTPSA id t22sm2122070otk.24.2020.10.07.11.42.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 07 Oct 2020 11:42:30 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b::80])
 by serve.minyard.net (Postfix) with ESMTPSA id 40CE518003E;
 Wed,  7 Oct 2020 18:42:29 +0000 (UTC)
Date: Wed, 7 Oct 2020 13:42:28 -0500
From: Corey Minyard <minyard@acm.org>
To: "Boehme, Markus" <markubo@amazon.de>
Message-ID: <20201007184228.GH3038@minyard.net>
References: <1599495937-10654-1-git-send-email-markubo@amazon.com>
 <1599495937-10654-3-git-send-email-markubo@amazon.com>
 <20200908003412.GD15602@minyard.net>
 <1599736120.29234.12.camel@amazon.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1599736120.29234.12.camel@amazon.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.161.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1kQEOi-006MHR-F5
Subject: Re: [Openipmi-developer] [PATCH 3/3] ipmi: Add timeout waiting for
 channel information
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
Reply-To: minyard@acm.org
Cc: "Park, Seongjae" <sjpark@amazon.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Nuernberger,
 Stefan" <snu@amazon.de>, "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>, "Shah, Amit" <aams@amazon.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVGh1LCBTZXAgMTAsIDIwMjAgYXQgMTE6MDg6NDBBTSArMDAwMCwgQm9laG1lLCBNYXJrdXMg
dmlhIE9wZW5pcG1pLWRldmVsb3BlciB3cm90ZToKPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgJiYgaXBtaV92ZXJzaW9uX21pbm9yKGlkKSA+
PSA1KSkgewo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB1bnNpZ25lZCBpbnQgc2V0
Owo+ID4gPiArwqDCoMKgwqDCoGlmIChpcG1pX3ZlcnNpb25fbWFqb3IoaWQpID09IDEgJiYgaXBt
aV92ZXJzaW9uX21pbm9yKGlkKSA8IDUpIHsKPiA+IFRoaXMgaXMgaW5jb3JyZWN0LCBpdCB3aWxs
IG5vdCBjb3JyZWN0bHkgaGFuZGxlIElQTUkgMC54IEJNQ3MuwqDCoFllcywKPiA+IHRoZXkgZXhp
c3QuCj4gCj4gSW50ZXJlc3RpbmchIEkgd2Fzbid0IGF3YXJlIG9mIHRob3NlLiBTZWFyY2hpbmcg
dGhlIHdlYiBkb2Vzbid0IHR1cm4gdXAKPiBtdWNoIGFuZCB0aGUgc3BlYyBkb2Vzbid0IG1lbnRp
b24gdGhlbSBlaXRoZXIuIEFyZSB0aGVzZSBwcmUtcmVsZWFzZQo+IGltcGxlbWVudGF0aW9ucyBv
ZiB0aGUgSVBNSSAxLjAgc3BlYyBvciBzb21lIGtpbmQgb2YgIklQTUkgbGlnaHQiPwoKVGhlcmUg
d2FzIGFuIDAuOSB2ZXJzaW9uIG9mIHRoZSBzcGVjIHRoYXQgc29tZSBtYWNoaW5lcyBpbXBsZW1l
bnRlZC4KSXQncyBub3QgcmVhbGx5IGEgImxpZ2h0IiB2ZXJzaW9uLCBpdCdzIGp1c3QgYSByZWFs
bHkgZWFybHkgdmVyc2lvbi4gIEkKZG9uJ3Qga25vdyBob3cgbWFueSBtYWNoaW5lIG91dCB0aGVy
ZSBzdGlsbCBpbXBsZW1lbnQgaXQsIGJ1dCBJIHRyeSB0bwprZWVwIHRoZW0gd29ya2luZyBpZiBJ
IGNhbi4KClRoYW5rcywKCi1jb3JleQoKPiAKPiBNYXJrdXMKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBs
aXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
