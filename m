Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C14DB6B7287
	for <lists+openipmi-developer@lfdr.de>; Mon, 13 Mar 2023 10:28:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pbeTp-0005rS-CO;
	Mon, 13 Mar 2023 09:28:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ct@flyingcircus.io>) id 1pbeTn-0005rM-CC
 for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 09:28:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KeOG10I1FFWbY2FcVWzxTDZRHi7UZXqma5+0Yl4kBbc=; b=KSddXpGsZYrn5PQcbMBZKoGxtm
 9qBUgdFDIIStgTKPcLh3bNoUnJHP4Yhjb7bDHg7J+px7z+wW/TrGqndpOsw3V2TQvIvDqBf41MYY6
 DoisugW6TtjpLwdydowtkWQutEeCogwV7PtCpUPuTUZ3P2DFXstLrAi/4XsH2TzPV3hw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KeOG10I1FFWbY2FcVWzxTDZRHi7UZXqma5+0Yl4kBbc=; b=JPpTPZYoiTUz3A3r46AxM5O6zL
 Dx+t9ybUadJveluDPYMvXFdr66/EXs6IBunqjz8NPm4W5ReccFHH7VP8QZ6ULmz2gkm8BC/RmWfxw
 MEMNz3kieWBlolOVau0z5irs44hW3/WukcgzQkDXwY9bbROin1A9uDWb+JW883wwK5NU=;
Received: from mail.flyingcircus.io ([212.122.41.197])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pbeTi-00012p-I4 for openipmi-developer@lists.sourceforge.net;
 Mon, 13 Mar 2023 09:28:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flyingcircus.io;
 s=mail; t=1678699691;
 bh=KeOG10I1FFWbY2FcVWzxTDZRHi7UZXqma5+0Yl4kBbc=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To;
 b=aTLnAQE+90osHpzhDd3d12uvtRWgr2bmMLXyPEcdRo6x8HgI/YRN0EG0BJBk8aLmf
 Ac6QQQvtxc+ir4aEoJSUJJGiHlTTasTWwvjX6D/wgHQFRNpg1hXF9hgqQt1lGZOpas
 CmkeDQ2rO1tDlFYz3gokjiUYXQDsHTkSHp13wcMY=
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
In-Reply-To: <ZAUdcpPfEDmmEcAF@minyard.net>
Date: Mon, 13 Mar 2023 10:27:51 +0100
Message-Id: <0393CB55-5A1D-408E-A4DA-41958BE81CA1@flyingcircus.io>
References: <4EA3F27B-7819-446F-9F22-C6B167348E88@flyingcircus.io>
 <Y/4tpHxe0irCRxjK@minyard.net>
 <D77B48B4-37B1-49FA-958C-D436407300B1@flyingcircus.io>
 <Y/40CIt6lw+0vjv1@minyard.net>
 <BBC4CC30-BCAC-400C-8804-8E8F6FD296C8@flyingcircus.io>
 <Y/+ETg3dpg+Ui48+@minyard.net>
 <28273499-DB8A-4C04-8BEE-BF5488BB1A6F@flyingcircus.io>
 <ZAUdcpPfEDmmEcAF@minyard.net>
To: Corey Minyard <minyard@acm.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, alright, so here’s the output from the NixOS machine:
    root@xxx ~ # echo c >/proc/sysrq-trigger client_loop: send disconnect: Broken
    pipe … 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1pbeTi-00012p-I4
Subject: Re: [Openipmi-developer] PANIC / OEM strings missing,
 not sure whether misconfiguration or a bug
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
From: Christian Theune via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Christian Theune <ct@flyingcircus.io>
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGksCgphbHJpZ2h0LCBzbyBoZXJl4oCZcyB0aGUgb3V0cHV0IGZyb20gdGhlIE5peE9TIG1hY2hp
bmU6Cgpyb290QHh4eCB+ICMgZWNobyBjID4vcHJvYy9zeXNycS10cmlnZ2VyCmNsaWVudF9sb29w
OiBzZW5kIGRpc2Nvbm5lY3Q6IEJyb2tlbiBwaXBlCuKApgoKcm9vdEB4eHggfiAjIGpvdXJuYWxj
dGwgLXUgaXBtaS1sb2cuc2VydmljZQotLSBKb3VybmFsIGJlZ2lucyBhdCBTdW4gMjAyMy0wMi0y
NiAxNDoyNTozNiBDRVQsIGVuZHMgYXQgTW9uIDIwMjMtMDMtMTMgMTA6MjU6MjcgQ0VULiAtLQpN
YXIgMTMgMTA6MTI6MzggeHh4IGlwbWktbG9nLXN0YXJ0WzUyMDk3M106IENsZWFyaW5nIFNFTC4g
IFBsZWFzZSBhbGxvdyBhIGZldyBzZWNvbmRzIHRvIGVyYXNlLgouLi4KLS0gQm9vdCBmZGVmNDk2
ZTc4NGU0NTQxYWJkOWFlNDBkZjQ3MmEwYiAtLQpNYXIgMTMgMTA6MjU6MDcgeHh4IGlwbWktbG9n
LXN0YXJ0WzE5NzNdOiAgICAxIHwgMDMvMTMvMjAyMyB8IDA5OjEyOjQ5IHwgRXZlbnQgTG9nZ2lu
ZyBEaXNhYmxlZCBTRUwgfCBMb2cgYXJlYSByZXNldC9jbGVhcmVkIHwgQXNzZXJ0ZWQKTWFyIDEz
IDEwOjI1OjA3IHh4eCBpcG1pLWxvZy1zdGFydFsxOTczXTogICAgMiB8IDAzLzEzLzIwMjMgfCAw
OToyMTowNiB8IFdhdGNoZG9nMiBPUyBXYXRjaGRvZyB8IEhhcmQgcmVzZXQgfCBBc3NlcnRlZApN
YXIgMTMgMTA6MjU6MDcgeHh4IGlwbWktbG9nLXN0YXJ0WzE5NzddOiBDbGVhcmluZyBTRUwuICBQ
bGVhc2UgYWxsb3cgYSBmZXcgc2Vjb25kcyB0byBlcmFzZS4KClRoZSBTT0wgbG9nIGxvb2tzIGxp
a2UgdGhpczoKCgpbMTEwNzU4NS45MTc2ODldIHN5c3JxOiBUcmlnZ2VyIGEgY3Jhc2gKWzExMDc1
ODUuOTIxMjcyXSBLZXJuZWwgcGFuaWMgLSBub3Qgc3luY2luZzogc3lzcnEgdHJpZ2dlcmVkIGNy
YXNoClsxMTA3NTg1LjkyNzE3OF0gQ1BVOiAxIFBJRDogNTIxMDMzIENvbW06IGJhc2ggVGFpbnRl
ZDogRyAgICAgICAgICBJICAgICAgIDUuMTAuMTU5ICMxLU5peE9TClsxMTA3NTg1LjkzNTMzNV0g
SGFyZHdhcmUgbmFtZTogRGVsbCBJbmMuIFBvd2VyRWRnZSBSNTEwLzAwSERQMCwgQklPUyAxLjEx
LjAgMDcvMjMvMjAxMgpbMTEwNzU4NS45NDMwNThdIENhbGwgVHJhY2U6ClsxMTA3NTg1Ljk0NTY4
MF0gIGR1bXBfc3RhY2srMHg2Yi8weDgzClsxMTA3NTg1Ljk0OTE1OF0gIHBhbmljKzB4MTAxLzB4
MmM4ClsxMTA3NTg1Ljk1MjM3OV0gID8gcHJpbnRrKzB4NTgvMHg3MwpbMTEwNzU4NS45NTU2ODdd
ICBzeXNycV9oYW5kbGVfY3Jhc2grMHgxNi8weDIwClsxMTA3NTg1Ljk1OTg1OV0gIF9faGFuZGxl
X3N5c3JxLmNvbGQrMHg0My8weDExYQpbMTEwNzU4NS45NjQyMDNdICB3cml0ZV9zeXNycV90cmln
Z2VyKzB4MjQvMHg0MApbMTEwNzU4NS45Njg0NjNdICBwcm9jX3JlZ193cml0ZSsweDUxLzB4OTAK
WzExMDc1ODUuOTcyMjkwXSAgdmZzX3dyaXRlKzB4YzMvMHgyODAKWzExMDc1ODUuOTc1NzY4XSAg
a3N5c193cml0ZSsweDVmLzB4ZTAKWzExMDc1ODUuOTc5MjQ4XSAgZG9fc3lzY2FsbF82NCsweDMz
LzB4NDAKWzExMDc1ODUuOTgyOTg3XSAgZW50cnlfU1lTQ0FMTF82NF9hZnRlcl9od2ZyYW1lKzB4
NjEvMHhjNgpbMTEwNzU4NS45ODgxOTldIFJJUDogMDAzMzoweDdmNTg3MzkzMjEzMwpbMTEwNzU4
NS45OTE5MzhdIENvZGU6IDBjIDAwIGY3IGQ4IDY0IDg5IDAyIDQ4IGM3IGMwIGZmIGZmIGZmIGZm
IGViIGIzIDBmIDFmIDgwIDAwIDAwIDAwIDAwIDY0IDhiIDA0IDI1IDE4IDAwIDAwIDAwIDg1IGMw
IDc1IDE0IGI4IDAxIDAwIDAwIDAwIDBmIDA1IDw0OD4gM2QgMDAgZjAgZmYgZmYgNzcgNTUgYzMg
MGYgMWYgNDAgMDAgNDEgNTQgNDkgODkgZDQgNTUgNDggODkgZjUKWzExMDc1ODYuMDEwODQyXSBS
U1A6IDAwMmI6MDAwMDdmZmNjMTM4MDhjOCBFRkxBR1M6IDAwMDAwMjQ2IE9SSUdfUkFYOiAwMDAw
MDAwMDAwMDAwMDAxClsxMTA3NTg2LjAxODU2Nl0gUkFYOiBmZmZmZmZmZmZmZmZmZmRhIFJCWDog
MDAwMDAwMDAwMDAwMDAwMiBSQ1g6IDAwMDA3ZjU4NzM5MzIxMzMKWzExMDc1ODYuMDI1OTIzXSBS
RFg6IDAwMDAwMDAwMDAwMDAwMDIgUlNJOiAwMDAwMDAwMDAwNWMxYzA4IFJESTogMDAwMDAwMDAw
MDAwMDAwMQpbMTEwNzU4Ni4wMzMyMTNdIFJCUDogMDAwMDAwMDAwMDVjMWMwOCBSMDg6IDAwMDAw
MDAwMDAwMDAwMGEgUjA5OiAwMDAwN2Y1ODczOWMyZjQwClsxMTA3NTg2LjA0MDUwNF0gUjEwOiAw
MDAwMDAwMDAwNWNjMzQ4IFIxMTogMDAwMDAwMDAwMDAwMDI0NiBSMTI6IDAwMDAwMDAwMDAwMDAw
MDIKWzExMDc1ODYuMDQ3Nzk0XSBSMTM6IDAwMDA3ZjU4NzNhMDA1MjAgUjE0OiAwMDAwN2Y1ODcz
YTAwNzIwIFIxNTogMDAwMDAwMDAwMDAwMDAwMgoKTm90aGluZyBvYnZpb3VzIHRvIG1lIGhlcmUg
4oCmIGlmIHlvdSBoYXZlIGFueSBmdXJ0aGVyIGlkZWFzIHdoYXQgdG8gdGVzdCwgbGV0IG1lIGtu
b3cuIEkgc2hvdWxkIGJlIG1vcmUgcmVzcG9uc2l2ZSBhZ2FpbiBub3cuCgpUaGFua3MgYW5kIGtp
bmQgcmVnYXJkcywKQ2hyaXN0aWFuCgo+IE9uIDUuIE1hciAyMDIzLCBhdCAyMzo1MywgQ29yZXkg
TWlueWFyZCA8bWlueWFyZEBhY20ub3JnPiB3cm90ZToKPiAKPiBPbiBXZWQsIE1hciAwMSwgMjAy
MyBhdCAwNjowMDowN1BNICswMTAwLCBDaHJpc3RpYW4gVGhldW5lIHdyb3RlOgo+PiBJ4oCZbSBn
b2luZyB0byBhY3R1YWxseSBhdHRhY2ggYSBzZXJpYWwgY29uc29sZSB0byB3YXRjaCB0aGUg4oCc
ZWNobyBj4oCdIHBhbmljLCBtYXliZSB0aGF0IGdpdmVzIF9zb21lXyBpbmRpY2F0aW9uLgo+PiAK
Pj4gT3RoZXJ3aXNlOiBJIGNhbiBxdWlja2x5IHJ1biBwYXRjaGVzIG9uIHRoZSBrZXJuZWwgdGhl
cmUgdG8gdHJ5IG91dCB0aGluZ3MuIChBbmQgdGhlIGZ1bmRpbmcgb2ZmZXIgc3RpbGwgc3RhbmRz
LikKPiAKPiBBbnkgbmV3cyBvbiB0aGlzPyAgSSdtIGN1cmlvdXMgd2hhdCB0aGlzIGNvdWxkIGJl
Lgo+IAo+IC1jb3JleQo+IAo+PiAKPj4gQ2hyaXN0aWFuCj4+IAo+Pj4gT24gMS4gTWFyIDIwMjMs
IGF0IDE3OjU4LCBDb3JleSBNaW55YXJkIDxtaW55YXJkQGFjbS5vcmc+IHdyb3RlOgo+Pj4gCj4+
PiBPbiBUdWUsIEZlYiAyOCwgMjAyMyBhdCAwNjozNjoxN1BNICswMTAwLCBDaHJpc3RpYW4gVGhl
dW5lIHdyb3RlOgo+Pj4+IFRoYW5rcywgYm90aCBtYWNoaW5lcyByZXBvcnQ6Cj4+Pj4gCj4+Pj4g
IyBjYXQgL3N5cy9tb2R1bGUvaXBtaV9tc2doYW5kbGVyL3BhcmFtZXRlcnMvcGFuaWNfb3AKPj4+
PiBzdHJpbmcKPj4+IAo+Pj4gQXQgdGhpcyBwb2ludCwgSSBoYXZlIG5vIGlkZWEuICBJJ2QgaGF2
ZSB0byBzdGFydCBhZGRpbmcgcHJpbnRrcyBpbnRvCj4+PiB0aGUgY29kZSBhbmQgY2F1c2UgY3Jh
c2hlcyB0byBzZWUgd2hhdCBpcyBoYXBwaW5nLgo+Pj4gCj4+PiBNYXliZSBzb21ldGhpbmcgaXMg
Z2V0dGluZyBpbiB0aGUgd2F5IG9mIHRoZSBwYW5pYyBub3RpZmllcnMgYW5kIGRvaW5nCj4+PiBz
b21ldGhpbmcgdG8gcHJldmVudCB0aGUgSVBNSSBkcml2ZXIgZnJvbSB3b3JraW5nLgo+Pj4gCj4+
PiAtY29yZXkKPj4+IAo+Pj4+IAo+Pj4+IAo+Pj4+PiBPbiAyOC4gRmViIDIwMjMsIGF0IDE4OjA0
LCBDb3JleSBNaW55YXJkIDxtaW55YXJkQGFjbS5vcmc+IHdyb3RlOgo+Pj4+PiAKPj4+Pj4gT2gs
IEkgZm9yZ290LiAgWW91IGNhbiBsb29rIGF0IHBhbmljX29wIGluIC9zeXMvbW9kdWxlL2lwbWlf
bXNnaGFuZGxlci9wYXJhbWV0ZXJzL3BhbmljX29wCj4+Pj4+IAo+Pj4+PiAtY29yZXkKPj4+Pj4g
Cj4+Pj4+IE9uIFR1ZSwgRmViIDI4LCAyMDIzIGF0IDA1OjQ4OjA3UE0gKzAxMDAsIENocmlzdGlh
biBUaGV1bmUgdmlhIE9wZW5pcG1pLWRldmVsb3BlciB3cm90ZToKPj4+Pj4+IEhpLAo+Pj4+Pj4g
Cj4+Pj4+Pj4gT24gMjguIEZlYiAyMDIzLCBhdCAxNzozNiwgQ29yZXkgTWlueWFyZCA8bWlueWFy
ZEBhY20ub3JnPiB3cm90ZToKPj4+Pj4+PiAKPj4+Pj4+PiBPbiBUdWUsIEZlYiAyOCwgMjAyMyBh
dCAwMjo1MzoxMlBNICswMTAwLCBDaHJpc3RpYW4gVGhldW5lIHZpYSBPcGVuaXBtaS1kZXZlbG9w
ZXIgd3JvdGU6Cj4+Pj4+Pj4+IEhpLAo+Pj4+Pj4+PiAKPj4+Pj4+Pj4gSeKAmXZlIGJlZW4gdHJ5
aW5nIHRvIGRlYnVnIHRoZSBQQU5JQyBhbmQgT0VNIHN0cmluZyBoYW5kbGluZyBhbmQgYW0gcnVu
bmluZyBvdXQgb2YgaWRlYXMgd2hldGhlciB0aGlzIGlzIGEgYnVnIG9yIHdoZXRoZXIgc29tZXRo
aW5nIHNvIHN1YnRsZSBoYXMgY2hhbmdlZCBpbiBteSBjb25maWcgdGhhdCBJ4oCZbSBqdXN0IG5v
dCBzZWVpbmcgaXQuCj4+Pj4+Pj4+IAo+Pj4+Pj4+PiAoTm90ZTogSeKAmW0gd2lsbGluZyB0byBw
YXkgZm9yIGNvbnN1bHRpbmcuKQo+Pj4+Pj4+IAo+Pj4+Pj4+IFByb2JhYmx5IG5vdCBuZWNlc3Nh
cnkuCj4+Pj4+PiAKPj4+Pj4+IFRoYW5rcyEgVGhlIG9mZmVyIGFsd2F5cyBzdGFuZHMuIElmIHdl
IHNob3VsZCBldmVyIG1lZXQgSeKAmW0gYWxzbyBhYmxlIHRvIHBheSBpbiBiZXZlcmFnZXMuIDsp
Cj4+Pj4+PiAKPj4+Pj4+Pj4gSSBoYXZlIG1hY2hpbmVzIHRoYXQgd2XigJl2ZSBtb3ZlZCBmcm9t
IGFuIG9sZGVyIHNldHVwIChHZW50b28sIChtb3N0bHkpIHZhbmlsbGEga2VybmVsIDQuMTkuMTU3
KSB0byBhIG5ld2VyIHNldHVwIChOaXhPUywgKG1vc3RseSkgdmFuaWxsYSBrZXJuZWwgNS4xMC4x
NTkpIGFuZCBJ4oCZbSBub3cgZXhwZXJpZW5jaW5nIGNyYXNoZXMgdGhhdCBzZWVtIHRvIGJlIGtl
cm5lbCBwYW5pY3MgYnV0IGRvIG5vdCBnZXQgdGhlIHVzdWFsIG1lc3NhZ2VzIGluIHRoZSBJUE1J
IFNFTC4KPj4+Pj4+PiAKPj4+Pj4+PiBJIGp1c3QgdGVzdGVkIG9uIHN0b2NrIDUuMTAuMTU5IGFu
ZCBpdCB3b3JrZWQgd2l0aG91dCBpc3N1ZS4gIEV2ZXJ5dGhpbmcKPj4+Pj4+PiB5b3UgaGF2ZSBi
ZWxvdyBsb29rcyBvay4KPj4+Pj4+PiAKPj4+Pj4+PiBDYW4geW91IHRlc3QgYnkgY2F1c2luZyBh
IGNyYXNoIHdpdGg6Cj4+Pj4+Pj4gCj4+Pj4+Pj4gZWNobyBjID4vcHJvYy9zeXNycS10cmlnZ2Vy
Cj4+Pj4+Pj4gCj4+Pj4+Pj4gYW5kIHNlZSBpZiBpdCB3b3Jrcz8KPj4+Pj4+IAo+Pj4+Pj4gWWVh
aCwgYWxyZWFkeSB0cmllZCB0aGF0IGFuZCB1bmZvcnR1bmF0ZWx5IHRoYXQgX2RvZXNu4oCZdF8g
d29yay4KPj4+Pj4+IAo+Pj4+Pj4+IEl0IHNvdW5kcyBsaWtlIHlvdSBhcmUgaGF2aW5nIHNvbWUg
dHlwZSBvZiBjcmFzaCB0aGF0IHlvdSB3b3VsZCBub3JtYWxseQo+Pj4+Pj4+IHVzZSB0aGUgSVBN
SSBsb2dzIHRvIGRlYnVnLiAgSG93ZXZlciwgdGhleSBhcmVuJ3QgcGVyZmVjdCwgdGhlIHN5c3Rl
bQo+Pj4+Pj4+IGhhcyB0byBzdGF5IHVwIGxvbmcgZW5vdWdoIHRvIGdldCB0aGVtIGludG8gdGhl
IGV2ZW50IGxvZy4KPj4+Pj4+IAo+Pj4+Pj4gSSB0aGluayB0aGV5IGFyZSBzdGF5aW5nIHVwIGxv
bmcgZW5vdWdoIGJlY2F1c2UgYSBwYW5pYyB0cmlnZ2VycyB0aGUgMjU1IHNlY29uZCBidW1wIGlu
IHRoZSB3YXRjaGRvZyBhbmQgb25seSB0aGVuIHBhc3Mgb24uIEhvd2V2ZXIsIGnigJl2ZSBhbHNv
IG5vdGljZWQgdGhhdCB0aGUga2VybmVsIF9zaG91bGRfIGJlIHJlYm9vdGluZyBhZnRlciBhIHBh
bmljIG11Y2ggZmFzdGVyIChhbmQgbm90IHJlbHkgb24gdGhlIHdhdGNoZG9nKSBhbmQgdGhhdCBk
b2VzbuKAmXQgaGFwcGVuIGVpdGhlci4gKFNvcnJ5IHRoaXMganVzdCBwb3BwZWQgZnJvbSB0aGUg
YmFjayBvZiBteSBoZWFkKS4KPj4+Pj4+IAo+Pj4+Pj4+IEluIHRoaXMgc2l0dWF0aW9uLCBnZXR0
aW5nIGEgc2VyaWFsIGNvbnNvbGUgKHByb2JhYmx5IHRocm91Z2ggSVBNSQo+Pj4+Pj4+IFNlcmlh
bCBvdmVyIExBTikgYW5kIGdldHRpbmcgdGhlIGNvbnNvbGUgb3V0cHV0IG9uIGEgY3Jhc2ggaXMg
cHJvYmFibHkKPj4+Pj4+PiB5b3VyIGJlc3Qgb3B0aW9uLiAgWW91IGNhbiB1c2UgaXBtaXRvb2wg
Zm9yIHRoaXMsIG9yIEkgaGF2ZSBhIGxpYnJhcnkKPj4+Pj4+PiB0aGF0IGlzIGFibGUgdG8gbWFr
ZSBjb25uZWN0aW9ucyB0byBzZXJpYWwgcG9ydHMsIGluY2x1ZGluZyB0aHJvdWdoIElQTUkKPj4+
Pj4+PiBTb0wuCj4+Pj4+PiAKPj4+Pj4+IFl1cC4gQmVlbiB0aGVyZSwgdG9vLiA6KQo+Pj4+Pj4g
Cj4+Pj4+PiBVbmZvcnR1bmF0ZWx5IHdl4oCZcmUgY3VycmVudGx5IGNoYXNpbmcgc29tZXRoaW5n
IHRoYXQgcG9wcyB1cCB2ZXJ5IHJhbmRvbWx5IG9uIHNvbWV3aGF0IG9kZCBtYWNoaW5lcyBhbmQg
SSBhbHNvIGhhdmUgdGhlIGZlZWxpbmcgdGhhdCBpdOKAmXMgc3lzdGVtYXRpY2FsbHkgYnJva2Vu
IHJpZ2h0IG5vdyAoYXMgdGhlIOKAnGVjaG8gY+KAnSBkb2VzbuKAmXQgd29yaykuCj4+Pj4+PiAK
Pj4+Pj4+IFRoYW5rcyBhIGxvdCwKPj4+Pj4+IENocmlzdGlhbgo+Pj4+Pj4gCj4+Pj4+PiAtLSAK
Pj4+Pj4+IENocmlzdGlhbiBUaGV1bmUgwrcgY3RAZmx5aW5nY2lyY3VzLmlvIMK3ICs0OSAzNDUg
MjE5NDAxIDAKPj4+Pj4+IEZseWluZyBDaXJjdXMgSW50ZXJuZXQgT3BlcmF0aW9ucyBHbWJIIMK3
IGh0dHBzOi8vZmx5aW5nY2lyY3VzLmlvCj4+Pj4+PiBMZWlwemlnZXIgU3RyLiA3MC83MSDCtyAw
NjEwOCBIYWxsZSAoU2FhbGUpIMK3IERldXRzY2hsYW5kCj4+Pj4+PiBIUiBTdGVuZGFsIEhSQiAy
MTE2OSDCtyBHZXNjaMOkZnRzZsO8aHJlcjogQ2hyaXN0aWFuIFRoZXVuZSwgQ2hyaXN0aWFuIFph
Z3JvZG5pY2sKPj4+Pj4+IAo+Pj4+Pj4gCj4+Pj4+PiAKPj4+Pj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+PiBPcGVuaXBtaS1kZXZlbG9wZXIg
bWFpbGluZyBsaXN0Cj4+Pj4+PiBPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2Uu
bmV0Cj4+Pj4+PiBodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9v
cGVuaXBtaS1kZXZlbG9wZXIKPj4+PiAKPj4+PiBMaWViZSBHcsO8w59lLAo+Pj4+IENocmlzdGlh
biBUaGV1bmUKPj4+PiAKPj4+PiAtLSAKPj4+PiBDaHJpc3RpYW4gVGhldW5lIMK3IGN0QGZseWlu
Z2NpcmN1cy5pbyDCtyArNDkgMzQ1IDIxOTQwMSAwCj4+Pj4gRmx5aW5nIENpcmN1cyBJbnRlcm5l
dCBPcGVyYXRpb25zIEdtYkggwrcgaHR0cHM6Ly9mbHlpbmdjaXJjdXMuaW8KPj4+PiBMZWlwemln
ZXIgU3RyLiA3MC83MSDCtyAwNjEwOCBIYWxsZSAoU2FhbGUpIMK3IERldXRzY2hsYW5kCj4+Pj4g
SFIgU3RlbmRhbCBIUkIgMjExNjkgwrcgR2VzY2jDpGZ0c2bDvGhyZXI6IENocmlzdGlhbiBUaGV1
bmUsIENocmlzdGlhbiBaYWdyb2RuaWNrCj4+Pj4gCj4+IAo+PiBMaWViZSBHcsO8w59lLAo+PiBD
aHJpc3RpYW4gVGhldW5lCj4+IAo+PiAtLSAKPj4gQ2hyaXN0aWFuIFRoZXVuZSDCtyBjdEBmbHlp
bmdjaXJjdXMuaW8gwrcgKzQ5IDM0NSAyMTk0MDEgMAo+PiBGbHlpbmcgQ2lyY3VzIEludGVybmV0
IE9wZXJhdGlvbnMgR21iSCDCtyBodHRwczovL2ZseWluZ2NpcmN1cy5pbwo+PiBMZWlwemlnZXIg
U3RyLiA3MC83MSDCtyAwNjEwOCBIYWxsZSAoU2FhbGUpIMK3IERldXRzY2hsYW5kCj4+IEhSIFN0
ZW5kYWwgSFJCIDIxMTY5IMK3IEdlc2Now6RmdHNmw7xocmVyOiBDaHJpc3RpYW4gVGhldW5lLCBD
aHJpc3RpYW4gWmFncm9kbmljawo+PiAKCkxpZWJlIEdyw7zDn2UsCkNocmlzdGlhbiBUaGV1bmUK
Ci0tIApDaHJpc3RpYW4gVGhldW5lIMK3IGN0QGZseWluZ2NpcmN1cy5pbyDCtyArNDkgMzQ1IDIx
OTQwMSAwCkZseWluZyBDaXJjdXMgSW50ZXJuZXQgT3BlcmF0aW9ucyBHbWJIIMK3IGh0dHBzOi8v
Zmx5aW5nY2lyY3VzLmlvCkxlaXB6aWdlciBTdHIuIDcwLzcxIMK3IDA2MTA4IEhhbGxlIChTYWFs
ZSkgwrcgRGV1dHNjaGxhbmQKSFIgU3RlbmRhbCBIUkIgMjExNjkgwrcgR2VzY2jDpGZ0c2bDvGhy
ZXI6IENocmlzdGlhbiBUaGV1bmUsIENocmlzdGlhbiBaYWdyb2RuaWNrCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBt
YWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRw
czovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9w
ZXIK
