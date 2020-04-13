Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2999F1A6807
	for <lists+openipmi-developer@lfdr.de>; Mon, 13 Apr 2020 16:24:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jO00K-00065t-0R; Mon, 13 Apr 2020 14:24:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jO00E-000659-Oq
 for openipmi-developer@lists.sourceforge.net; Mon, 13 Apr 2020 14:23:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zgppeRMxVpIfTJVA3qGRUdRIsFdXnQrzqcTneOFy0VQ=; b=Ew6SVaFA4rXKx2rTGy3LAheVTa
 Qe8RgnTVWYwJrsHYqXFnXXdq6R+AhrTzUBjfk7UkBYPbDXgdgHlMdOM32eOtn/5s5UWtbkyStEZWM
 Qw0ZQeZRREVApMuEaZyhUpeWVNvJxJq487vAlZPlvRKxPJw+YbhysWFeDhMqGsjyNQTc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zgppeRMxVpIfTJVA3qGRUdRIsFdXnQrzqcTneOFy0VQ=; b=GZsTVy8zDXtjHjSa/N0tsry5DN
 WN2fb/mXMkZ2D8XPheZlFl0j8ppVrLFn1Lw4c3Uj9f0iFZx8SC5stBLsJG12hcKnBvksQb7/f2PHI
 3drtweUusNUD9vJNFuC9oqYY10lDywLAKrpFJrwyInKo+KI8EE78MFTm/mrHEpk+YJCk=;
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jO00C-00EWsu-NC
 for openipmi-developer@lists.sourceforge.net; Mon, 13 Apr 2020 14:23:58 +0000
Received: by mail-oi1-f196.google.com with SMTP id v141so2987130oie.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 13 Apr 2020 07:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=zgppeRMxVpIfTJVA3qGRUdRIsFdXnQrzqcTneOFy0VQ=;
 b=JO5dvR2szf5ab4R86+km40ex7EHd2y5Ot0J5exoIs5vUF3QEwyEgZc71+KfcKuw7kn
 QArJRgB8V8fxIucSWTw7lKEpaJ4ybHQ260rlWZE9wUeRDTeW6LG2lq3tWfN9rWMsHhpf
 laFzd58X1lA179xxhELHYe98pYbTb3fILdtVDoAEdG9a3qkjyTKlYX4dDaA3xrzrlQ4J
 nV6n6Y5mHjzKPFcuFi5aQEZyO6ysDGf6ezA4dDkqgPYwd1QNqS5Lba1F8IocYBFazcLT
 TraEzJuR5DtX07lNFNmwHkZTupJnR7xLAY1t+1RwQ1SrYiaAKYq5/ZxWC3n6BYbjRH0N
 +3IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=zgppeRMxVpIfTJVA3qGRUdRIsFdXnQrzqcTneOFy0VQ=;
 b=oRXFqgu5Nbx//DENuBzbPPetBl0NtzkXag96U1DPRKi35tkT1rEktLmkEERcNaWkb7
 Qo3T0XQ72tJ6YHHNrdE6EtOX0xI3oa6HzFInNoZalurwBzZyvF697pC+yEMdssC3rrvH
 n/FS7R5TgHhzGwnXFE6gQP85BDZcbnMaYNWMC8qNV54sYFhfmg6QEatB2eIxFzIiXFAE
 p4O3KqW3o0K2uoXCIYAsLcCFuPBDo7fBBGkAFN9i+/eii0UpET9qdKE4U17II5QWErjN
 lVx9PFasK4+fGcCWwPgzLFwyBgN+Mzt2xSlGMb6AoTE7VM1lK09Zi30voSCVh9KvXsJC
 Bq9A==
X-Gm-Message-State: AGi0PualxWktCfHnWi+bLjks1Dwvi4JtH3Zs9qxyxnoB/EESe7L3tcwi
 MGUk3vI2a8nT/en6tQ3BKEmuiX+Crg==
X-Google-Smtp-Source: APiQypJXWJZ4G3NyASimxCreOzU+hPt7KjyQITSZwlrNmWLk6GM6HoAZfdkGKl0DwhOVywzy4ibVXQ==
X-Received: by 2002:aca:cf0d:: with SMTP id f13mr11506745oig.162.1586787830992; 
 Mon, 13 Apr 2020 07:23:50 -0700 (PDT)
Received: from serve.minyard.net ([47.184.149.130])
 by smtp.gmail.com with ESMTPSA id f45sm4780968otf.30.2020.04.13.07.23.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 07:23:50 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id 64CD4181888;
 Mon, 13 Apr 2020 14:23:49 +0000 (UTC)
Date: Mon, 13 Apr 2020 09:23:48 -0500
From: Corey Minyard <minyard@acm.org>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Message-ID: <20200413142348.GD3587@minyard.net>
References: <20200408115958.2848-1-tangbin@cmss.chinamobile.com>
 <20200413113225.GB3587@minyard.net>
 <47c06465-9ae5-42c2-ca00-5c666521bbde@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <47c06465-9ae5-42c2-ca00-5c666521bbde@cmss.chinamobile.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.196 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jO00C-00EWsu-NC
Subject: Re: [Openipmi-developer] [PATCH v3]ipmi:bt-bmc:Avoid unnecessary
 judgement
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
Cc: gregkh@linuxfoundation.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, arnd@arndb.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gTW9uLCBBcHIgMTMsIDIwMjAgYXQgMDc6NTY6NDRQTSArMDgwMCwgVGFuZyBCaW4gd3JvdGU6
Cj4gSGksIENvcmV5Ogo+IAo+IE9uIDIwMjAvNC8xMyAxOTozMiwgQ29yZXkgTWlueWFyZCB3cm90
ZToKPiA+IE9uIFdlZCwgQXByIDA4LCAyMDIwIGF0IDA3OjU5OjU4UE0gKzA4MDAsIFRhbmcgQmlu
IHdyb3RlOgo+ID4gPiBidF9ibWNfcHJvYmUoKSBpcyBvbmx5IGNhbGxlZCB3aXRoIGFuIG9wZW5m
aXJtd2FyZSBwbGF0Zm9ybSBkZXZpY2UuCj4gPiA+IFRoZXJlZm9yZSB0aGVyZSBpcyBubyBuZWVk
IHRvIGNoZWNrIHRoYXQgdGhlIHBhc3NlZCBpbiBkZXZpY2UgaXMgTlVMTCBvcgo+ID4gPiB0aGF0
IGl0IGhhcyBhbiBvcGVuZmlybXdhcmUgbm9kZS4KPiA+IEkgd2FpdGVkIHVudGlsIGFmdGVyIHRo
ZSBtZXJnZSB3aW5kb3cgY2xvc2VkLCB0aGlzIGlzIHF1ZXVlZCBmb3IgNS44Lgo+IENhbiBJIGNv
bnNpZGVyIHRoYXQgdGhlIHBhdGNoIHdpbGwgYmUgYXBwbGllZCBpbiA1LjjvvJ8KCkl0J3MgaW4g
bXkgcXVldWUsIHNvIHRoYXQncyB0aGUgcGxhbi4KCj4gPiAgIEkKPiA+IGNoYW5nZWQgdGhlIHRp
dGxlIHRvIGJlICJBdm9pZCB1bm5lY2Vzc2FyeSBjaGVjayIuCj4gWW91IGhhdmUgbW9kaWZpZWQg
aXQsIHdoaWNoIG1lYW5zIEkgZG9uJ3QgbmVlZCB0byBzdWJtaXQgYSBuZXcgcGF0Y2jvvJ8KCkNv
cnJlY3QuCgo+ID4gICAiSnVkZ2VtZW50IiwKPiA+IGFsdGhvdWdoIHRlY2huaWNhbGx5IGNvcnJl
Y3QsIGhhcyBhIGxlZ2FsIG9yIG1vcmFsIGNvbm5vdGF0aW9uLgo+IAo+IEknbSBzb3JyeSwgSSB3
b24ndCB1c2UgdGhhdCB3b3JkIGFnYWluLgoKSXQncyBub3QgYSBwcm9ibGVtLiAgRW5nbGlzaCBp
cyBhIGxhbmd1YWdlIHdpdGggYSBsb3Qgb2YgdGhpbmdzIGxpa2UKdGhpcy4KCi1jb3JleQoKPiAK
PiAKPiBUaGFua3MgZm9yIHlvdXIgaW5zdHJ1Y3Rpb24uCj4gCj4gVGFuZyBCaW4KPiAKPiA+IAo+
IAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9w
ZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by9vcGVuaXBtaS1kZXZlbG9wZXIK
