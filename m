Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3806456676C
	for <lists+openipmi-developer@lfdr.de>; Tue,  5 Jul 2022 12:09:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o8fUb-0008TN-70; Tue, 05 Jul 2022 10:09:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jdelvare@suse.de>)
 id 1o8fUX-0008Sd-1h; Tue, 05 Jul 2022 10:09:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qvMJ4J1/LuqJ2bm7BlZIoOLJOYmWh+4Rpvkk33SZGOA=; b=Ml/JAT8vWlRXi6xFm3qGtTE7+h
 1BzZzLE9YgMiSaGmkxuZpPauRDJ8pQMG9Qe5ao12pQjb07z5wQ+eVLgsUIljiP+Tv9VUj863Wf/aM
 73XvGwaVjDi/U8nmqtQhwQjd9Qrz4g4NJeXJG4j5WndNbLtCHtBI8vjd8tXg/zeVgiyM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qvMJ4J1/LuqJ2bm7BlZIoOLJOYmWh+4Rpvkk33SZGOA=; b=WSd5aouHmAYesMPMnClqfp/AJQ
 OmvfqP+a62q0qL7vf9aTndLsZ7/UP3Qx1qTyQreHCPGtctK3l8E9ETTm4BBXJxJXnFNcTARJppNB4
 VnDKKoB/eGE8up2XoRiDJ9/I0nf9na6gjRKHgVpp6gYpHJoB0yQNUcfRIiFpkGYnddhQ=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o8fUS-007ocv-SM; Tue, 05 Jul 2022 10:09:12 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 4BB4A1F91F;
 Tue,  5 Jul 2022 10:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1657015735; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qvMJ4J1/LuqJ2bm7BlZIoOLJOYmWh+4Rpvkk33SZGOA=;
 b=eByb4sSPqg6rRuVWR7Uyol2qkXUh2FlAJZJl6kQB2+c8EEhcdaxtq/jkX0dVzdvL/5s6D3
 /efNTsY/bdasP3pVQxu6qP4nvHO+zcS4O9fblGgs1NR89rSYgTvYETM292rGHy3CrhOSj+
 qGcOFU+GGl+mKHAF54mbZA9ZrTUJOaY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1657015735;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qvMJ4J1/LuqJ2bm7BlZIoOLJOYmWh+4Rpvkk33SZGOA=;
 b=jKWTp5GMggeoLloojImrUvPvKkYL+8GQzQSR8Qi8VzqCYEK46zUKh7GMjl/cO3qvfPDiP7
 DHXFfHIde+vxx5CQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 2E2AF1339A;
 Tue,  5 Jul 2022 10:08:54 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id VBGsCbYNxGK1BQAAMHmgww
 (envelope-from <jdelvare@suse.de>); Tue, 05 Jul 2022 10:08:54 +0000
Date: Tue, 5 Jul 2022 12:08:52 +0200
From: Jean Delvare <jdelvare@suse.de>
To: Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20220705120852.049dc235@endymion.delvare>
In-Reply-To: <20220628140313.74984-7-u.kleine-koenig@pengutronix.de>
References: <20220628140313.74984-1-u.kleine-koenig@pengutronix.de>
 <20220628140313.74984-7-u.kleine-koenig@pengutronix.de>
Organization: SUSE Linux
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; x86_64-suse-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 28 Jun 2022 16:03:12 +0200, Uwe Kleine-König wrote:
    > From: Uwe Kleine-König <uwe@kleine-koenig.org> > > The value returned
   by an i2c driver's remove function is mostly ignored. > (Only an e [...] 
 
 Content analysis details:   (-2.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [195.135.220.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1o8fUS-007ocv-SM
Subject: Re: [Openipmi-developer] [PATCH 6/6] i2c: Make remove callback
 return void
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
Cc: alsa-devel@alsa-project.org, linux-pwm@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-fbdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-i2c@vger.kernel.org,
 Guenter Roeck <groeck@chromium.org>, linux-stm32@st-md-mailman.stormreply.com,
 linux-leds@vger.kernel.org, linux-rtc@vger.kernel.org,
 chrome-platform@lists.linux.dev, linux-staging@lists.linux.dev,
 kasan-dev@googlegroups.com, linux-clk@vger.kernel.org,
 linux-serial@vger.kernel.org, linux-input@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-pm@vger.kernel.org,
 acpi4asus-user@lists.sourceforge.net, linux-gpio@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 patches@opensource.cirrus.com, linux-usb@vger.kernel.org,
 Wolfram Sang <wsa@kernel.org>, linux-crypto@vger.kernel.org,
 netdev@vger.kernel.org, linux-integrity@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCAyOCBKdW4gMjAyMiAxNjowMzoxMiArMDIwMCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3Jv
dGU6Cj4gRnJvbTogVXdlIEtsZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUta29lbmlnLm9yZz4KPiAK
PiBUaGUgdmFsdWUgcmV0dXJuZWQgYnkgYW4gaTJjIGRyaXZlcidzIHJlbW92ZSBmdW5jdGlvbiBp
cyBtb3N0bHkgaWdub3JlZC4KPiAoT25seSBhbiBlcnJvciBtZXNzYWdlIGlzIHByaW50ZWQgaWYg
dGhlIHZhbHVlIGlzIG5vbi16ZXJvIHRoYXQgdGhlCj4gZXJyb3IgaXMgaWdub3JlZC4pCj4gCj4g
U28gY2hhbmdlIHRoZSBwcm90b3R5cGUgb2YgdGhlIHJlbW92ZSBmdW5jdGlvbiB0byByZXR1cm4g
bm8gdmFsdWUuIFRoaXMKPiB3YXkgZHJpdmVyIGF1dGhvcnMgYXJlIG5vdCB0ZW1wdGVkIHRvIGFz
c3VtZSB0aGF0IHBhc3NpbmcgYW4gZXJyb3IgdG8KPiB0aGUgdXBwZXIgbGF5ZXIgaXMgYSBnb29k
IGlkZWEuIEFsbCBkcml2ZXJzIGFyZSBhZGFwdGVkIGFjY29yZGluZ2x5Lgo+IFRoZXJlIGlzIG5v
IGludGVuZGVkIGNoYW5nZSBvZiBiZWhhdmlvdXIsIGFsbCBjYWxsYmFja3Mgd2VyZSBwcmVwYXJl
ZCB0bwo+IHJldHVybiAwIGJlZm9yZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvD
tm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgo+IC0tLQoKVGhhdCdzIGEgaHVn
ZSBjaGFuZ2UgZm9yIGEgcmVsYXRpdmVseSBzbWFsbCBiZW5lZml0LCBidXQgaWYgdGhpcyBpcwph
cHByb3ZlZCBieSB0aGUgSTJDIGNvcmUgbWFpbnRhaW5lciB0aGVuIGZpbmUgd2l0aCBtZS4gRm9y
OgoKPiAgZHJpdmVycy9od21vbi9hZGMxMjhkODE4LmMgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgNCArLS0tCj4gIGRyaXZlcnMvaHdtb24vYWR0NzQ3MC5jICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8IDMgKy0tCj4gIGRyaXZlcnMvaHdtb24vYXNiMTAwLmMgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDYgKystLS0tCj4gIGRyaXZlcnMvaHdt
b24vYXNjNzYyMS5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDQgKy0tLQo+
ICBkcml2ZXJzL2h3bW9uL2RtZTE3MzcuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfCA0ICstLS0KPiAgZHJpdmVycy9od21vbi9mNzUzNzVzLmMgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgNSArKy0tLQo+ICBkcml2ZXJzL2h3bW9uL2ZzY2htZC5jICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCA2ICsrLS0tLQo+ICBkcml2ZXJzL2h3bW9u
L2Z0c3RldXRhdGVzLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAzICstLQo+ICBk
cml2ZXJzL2h3bW9uL2luYTIwOS5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
fCA0ICstLS0KPiAgZHJpdmVycy9od21vbi9pbmEzMjIxLmMgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgNCArLS0tCj4gIGRyaXZlcnMvaHdtb24vamM0Mi5jICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8IDMgKy0tCj4gIGRyaXZlcnMvaHdtb24vbWNwMzAy
MS5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDQgKy0tLQo+ICBkcml2ZXJz
L2h3bW9uL29jYy9wOF9pMmMuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCA0ICst
LS0KPiAgZHJpdmVycy9od21vbi9wY2Y4NTkxLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwgMyArLS0KPiAgZHJpdmVycy9od21vbi9zbW02NjUuYyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgMyArLS0KPiAgZHJpdmVycy9od21vbi90cHMyMzg2MS5jICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgNCArLS0tCj4gIGRyaXZlcnMvaHdtb24v
dzgzNzgxZC5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDQgKy0tLQo+ICBk
cml2ZXJzL2h3bW9uL3c4Mzc5MWQuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
fCA2ICsrLS0tLQo+ICBkcml2ZXJzL2h3bW9uL3c4Mzc5MmQuYyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCA2ICsrLS0tLQo+ICBkcml2ZXJzL2h3bW9uL3c4Mzc5My5jICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCA2ICsrLS0tLQo+ICBkcml2ZXJzL2h3bW9u
L3c4Mzc5NS5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCA0ICstLS0KPiAg
ZHJpdmVycy9od21vbi93ODNsNzg1dHMuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgNiArKy0tLS0KPiAgZHJpdmVycy9pMmMvaTJjLWNvcmUtYmFzZS5jICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgNiArLS0tLS0KPiAgZHJpdmVycy9pMmMvaTJjLXNsYXZlLWVlcHJv
bS5jICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgNCArLS0tCj4gIGRyaXZlcnMvaTJjL2ky
Yy1zbGF2ZS10ZXN0dW5pdC5jICAgICAgICAgICAgICAgICAgICAgICAgICB8IDMgKy0tCj4gIGRy
aXZlcnMvaTJjL2kyYy1zbWJ1cy5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8
IDMgKy0tCj4gIGRyaXZlcnMvaTJjL211eGVzL2kyYy1tdXgtbHRjNDMwNi5jICAgICAgICAgICAg
ICAgICAgICAgICB8IDQgKy0tLQo+ICBkcml2ZXJzL2kyYy9tdXhlcy9pMmMtbXV4LXBjYTk1NDEu
YyAgICAgICAgICAgICAgICAgICAgICAgfCAzICstLQo+ICBkcml2ZXJzL2kyYy9tdXhlcy9pMmMt
bXV4LXBjYTk1NHguYyAgICAgICAgICAgICAgICAgICAgICAgfCAzICstLQoKUmV2aWV3ZWQtYnk6
IEplYW4gRGVsdmFyZSA8amRlbHZhcmVAc3VzZS5kZT4KCi0tIApKZWFuIERlbHZhcmUKU1VTRSBM
MyBTdXBwb3J0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
