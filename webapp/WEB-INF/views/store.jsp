<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="resources/engine1/style.css" />
<script type="text/javascript" src="resources/engine1/jquery.js"></script>
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<style>

/* Block placement */
:root {
  font-size: 20px;
}

*, *::before, *::after {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body, input {
  font-family: "Hind", sans-serif;
  font-size: 1em;
}

body {
  background-color: #ccc;
  height: 50vh;
  margin: 0;
}

input {
  position: absolute;
}

input[type=radio] {
  top: -20px;
  left: -20px;
}
input[type=radio]:checked ~ input[type=reset] {
  visibility: visible;
}

input[type=reset] {
  background-color: #c22;
  border: 0;
  border-radius: 0;
  color: #FFE4C4;
  padding: 0.5em 0.75em;
  bottom: 5%;
  left: 50%;
  visibility: hidden;
  transform: translateX(-50%);
  transition: background-color 0.2s;
  -webkit-appearance: none;
  appearance: none;
}
input[type=reset]:hover, input[type=reset]:focus {
  background-color: #ee4444;
}
input[type=reset]:active {
  background-color: #aa0000;
}

.container {
  animation: fadeIn 0.25s 0.25s linear forwards;
  display: flex;
  margin: 30;
  opacity: 0;
  overflow: hidden;
  position: absolute;
  top: 50;
  right: 0;
  bottom: 0;
  left: 0;
  width: 300px;
  height: 730px;
  perspective: 810px;
  transform-style: preserve-3d;
}

.surface {
  display: block;
  width: 384px;
  height: 224px;
  margin: -2;
  transform-style: preserve-3d;
  transform: translateY(257px) rotateX(93deg) rotateZ(36deg);
  transition: transform 0.25s;
  will-change: transform;
}

.block {
  display: none;
  transform-style: preserve-3d;
  position: absolute;
  left: 0;
  bottom: 2;
}

.block-inner div {
  display: flex;
  flex-wrap: wrap;
  align-content: flex-start;
  position: absolute;
  width: 16px;
  height: 16px;
}

.block-inner {
  position: relative;
  width: 16px;
  transition: transform 0.25s linear;
  transform-style: preserve-3d;
  transform: rotateX(-90deg) translateZ(16px);
}

.back {
  transform: translateZ(-16px) rotateY(180deg);
}

.left {
  transform-origin: center left;
  transform: rotateY(270deg) translateX(-16px);
}

.right {
  transform-origin: top right;
}
.right::after, .right div {
  top: 0;
  left: 0;
  transform-origin: 0 50%;
  transition: transform 0.25s 0.25s linear;
}
.right::after {
  backface-visibility: hidden;
  -webkit-backface-visibility: hidden;
  color: #FFE4C4;
  font-size: 24px;
  line-height: 24px;
  text-align: center;
  padding: 20% 5%;
  position: absolute;
  width: 100%;
  height: 100%;
  z-index: 2;
}
.right div {
  width: 100%;
  height: 100%;
}

.top, .bottom {
  transform-origin: top center;
}

.spine, .right::after, .contents h1 {
  font-family: "Lora", serif;
  font-weight: bold;
  -webkit-font-smoothing: antialiased;
}

.spine {
  background: transparent;
  color: #ccc;
  font-size: 12px;
  line-height: 12px;
  top: 0;
  left: 0;
  transform: rotate(90deg) translate(12px, -50%);
  white-space: nowrap;
  width: 0;
  height: 16px;
}

.cover {
  background-color: #FFE4C4;
  z-index: 1;
}

.contents {
  font-size: 11.2px;
  padding: 16px;
}
.contents h1 {
  font-size: 2em;
}
.contents p {
  font-family: "Source Sans Pro", serif;
}

.b1 {
  display: block;
  transform: translate3d(16px, -224px, 16px);
}
.b1 .block-inner > div {
  background-color: #441e12;
}
.b1 .block-inner > div.top, .b1 .block-inner > div.bottom {
  width: 352px;
  height: 224px;
}
.b1 .block-inner > div.top {
  transform: rotateX(-90deg) translateY(-208px);
}
.b1 .block-inner > div.bottom {
  transform: rotateX(-90deg) translateY(-208px) translateZ(16px);
}
.b1 .block-inner > div.front::before, .b1 .block-inner > div.back::before, .b1 .block-inner > div.left::before, .b1 .block-inner > div.right::before {
  background-color: #FFE4C4;
  content: "";
  width: 100%;
  height: 100%;
}
.b1 .block-inner > div.front, .b1 .block-inner > div.back {
  width: 352px;
  height: 16px;
}
.b1 .block-inner > div.front::before, .b1 .block-inner > div.back::before {
  opacity: 0.2;
}
.b1 .block-inner > div.front {
  transform: translateZ(208px);
}
.b1 .block-inner > div.left, .b1 .block-inner > div.right {
  width: 224px;
  height: 16px;
}
.b1 .block-inner > div.left::before, .b1 .block-inner > div.right::before {
  opacity: 0.4;
}
.b1 .block-inner > div.right {
  transform: rotateY(-270deg) translate3d(16px, 0, 128px);
  transform-style: preserve-3d;
}

.b2 {
  display: block;
  transform: translate3d(0px, -224px, 288px);
}
.b2 .block-inner > div {
  background-color: #441e12;
}
.b2 .block-inner > div.top, .b2 .block-inner > div.bottom {
  width: 384px;
  height: 16px;
}
.b2 .block-inner > div.top {
  transform: rotateX(-90deg) translateY(0px);
}
.b2 .block-inner > div.bottom {
  transform: rotateX(-90deg) translateY(0px) translateZ(288px);
}
.b2 .block-inner > div.front::before, .b2 .block-inner > div.back::before, .b2 .block-inner > div.left::before, .b2 .block-inner > div.right::before {
  background-color: #FFE4C4;
  content: "";
  width: 100%;
  height: 100%;
}
.b2 .block-inner > div.front, .b2 .block-inner > div.back {
  width: 384px;
  height: 288px;
}
.b2 .block-inner > div.front::before, .b2 .block-inner > div.back::before {
  opacity: 0.2;
}
.b2 .block-inner > div.front {
  transform: translateZ(0px);
}
.b2 .block-inner > div.left, .b2 .block-inner > div.right {
  width: 16px;
  height: 288px;
}
.b2 .block-inner > div.left::before, .b2 .block-inner > div.right::before {
  opacity: 0.4;
}
.b2 .block-inner > div.right {
  transform: rotateY(-270deg) translate3d(16px, 0, 368px);
  transform-style: preserve-3d;
}

.b3 {
  display: block;
  transform: translate3d(0px, -208px, 288px);
}
.b3 .block-inner > div {
  background-color: #441e12;
}
.b3 .block-inner > div.top, .b3 .block-inner > div.bottom {
  width: 16px;
  height: 208px;
}
.b3 .block-inner > div.top {
  transform: rotateX(-90deg) translateY(-192px);
}
.b3 .block-inner > div.bottom {
  transform: rotateX(-90deg) translateY(-192px) translateZ(288px);
}
.b3 .block-inner > div.front::before, .b3 .block-inner > div.back::before, .b3 .block-inner > div.left::before, .b3 .block-inner > div.right::before {
  background-color: #FFE4C4;
  content: "";
  width: 100%;
  height: 100%;
}
.b3 .block-inner > div.front, .b3 .block-inner > div.back {
  width: 16px;
  height: 288px;
}
.b3 .block-inner > div.front::before, .b3 .block-inner > div.back::before {
  opacity: 0.2;
}
.b3 .block-inner > div.front {
  transform: translateZ(192px);
}
.b3 .block-inner > div.left, .b3 .block-inner > div.right {
  width: 208px;
  height: 288px;
}
.b3 .block-inner > div.left::before, .b3 .block-inner > div.right::before {
  opacity: 0.4;
}
.b3 .block-inner > div.right {
  transform: rotateY(-270deg) translate3d(16px, 0, -192px);
  transform-style: preserve-3d;
}

.b4 {
  display: block;
  transform: translate3d(368px, -208px, 288px);
}
.b4 .block-inner > div {
  background-color: #441e12;
}
.b4 .block-inner > div.top, .b4 .block-inner > div.bottom {
  width: 16px;
  height: 208px;
}
.b4 .block-inner > div.top {
  transform: rotateX(-90deg) translateY(-192px);
}
.b4 .block-inner > div.bottom {
  transform: rotateX(-90deg) translateY(-192px) translateZ(288px);
}
.b4 .block-inner > div.front::before, .b4 .block-inner > div.back::before, .b4 .block-inner > div.left::before, .b4 .block-inner > div.right::before {
  background-color: #FFE4C4;
  content: "";
  width: 100%;
  height: 100%;
}
.b4 .block-inner > div.front, .b4 .block-inner > div.back {
  width: 16px;
  height: 288px;
}
.b4 .block-inner > div.front::before, .b4 .block-inner > div.back::before {
  opacity: 0.2;
}
.b4 .block-inner > div.front {
  transform: translateZ(192px);
}
.b4 .block-inner > div.left, .b4 .block-inner > div.right {
  width: 208px;
  height: 288px;
}
.b4 .block-inner > div.left::before, .b4 .block-inner > div.right::before {
  opacity: 0.4;
}
.b4 .block-inner > div.right {
  transform: rotateY(-270deg) translate3d(16px, 0, -192px);
  transform-style: preserve-3d;
}

.b5 {
  display: block;
  transform: translate3d(0px, -224px, 304px);
}
.b5 .block-inner > div {
  background-color: #441e12;
}
.b5 .block-inner > div.top, .b5 .block-inner > div.bottom {
  width: 384px;
  height: 224px;
}
.b5 .block-inner > div.top {
  transform: rotateX(-90deg) translateY(-208px);
}
.b5 .block-inner > div.bottom {
  transform: rotateX(-90deg) translateY(-208px) translateZ(16px);
}
.b5 .block-inner > div.front::before, .b5 .block-inner > div.back::before, .b5 .block-inner > div.left::before, .b5 .block-inner > div.right::before {
  background-color: #FFE4C4;
  content: "";
  width: 100%;
  height: 100%;
}
.b5 .block-inner > div.front, .b5 .block-inner > div.back {
  width: 384px;
  height: 16px;
}
.b5 .block-inner > div.front::before, .b5 .block-inner > div.back::before {
  opacity: 0.2;
}
.b5 .block-inner > div.front {
  transform: translateZ(208px);
}
.b5 .block-inner > div.left, .b5 .block-inner > div.right {
  width: 224px;
  height: 16px;
}
.b5 .block-inner > div.left::before, .b5 .block-inner > div.right::before {
  opacity: 0.4;
}
.b5 .block-inner > div.right {
  transform: rotateY(-270deg) translate3d(16px, 0, 160px);
  transform-style: preserve-3d;
}

.b6 {
  display: block;
  transform: translate3d(16px, -208px, 240px);
}
.b6 .block-inner > div {
  background-color: #c00000;
}
.b6 .block-inner > div.top, .b6 .block-inner > div.bottom {
  width: 32px;
  height: 176px;
}
.b6 .block-inner > div.top {
  transform: rotateX(-90deg) translateY(-160px);
}
.b6 .block-inner > div.bottom {
  transform: rotateX(-90deg) translateY(-160px) translateZ(224px);
}
.b6 .block-inner > div.front::before, .b6 .block-inner > div.back::before, .b6 .block-inner > div.left::before, .b6 .block-inner > div.right::before {
  background-color: #FFE4C4;
  content: "";
  width: 100%;
  height: 100%;
}
.b6 .block-inner > div.front, .b6 .block-inner > div.back {
  width: 32px;
  height: 224px;
}
.b6 .block-inner > div.front::before, .b6 .block-inner > div.back::before {
  opacity: 0.2;
}
.b6 .block-inner > div.front {
  transform: translateZ(160px);
}
.b6 .block-inner > div.left, .b6 .block-inner > div.right {
  width: 176px;
  height: 224px;
}
.b6 .block-inner > div.left::before, .b6 .block-inner > div.right::before {
  opacity: 0;
}
.b6 .block-inner > div.right {
  transform: rotateY(-270deg) translate3d(16px, 0, -144px);
  transform-style: preserve-3d;
  background-color: #fff;
}
.b6 .block-inner > div.right::after {
  background-color: #c00000;
  content: attr(data-title);
}
.b6 .block-inner > div.top, .b6 .block-inner > div.back, .b6 .block-inner > div.bottom {
  background-color: #fff;
  background-image: repeating-linear-gradient(90deg, transparent, transparent 21%, #aaa 21%, #aaa 25%, transparent 25%, transparent 46%, #aaa 46%, #aaa 50%, transparent 50%);
  background-size: 16px 16px;
}

.b7 {
  display: block;
  transform: translate3d(48px, -208px, 256px);
}
.b7 .block-inner > div {
  background-color: #891a21;
}
.b7 .block-inner > div.top, .b7 .block-inner > div.bottom {
  width: 32px;
  height: 176px;
}
.b7 .block-inner > div.top {
  transform: rotateX(-90deg) translateY(-160px);
}
.b7 .block-inner > div.bottom {
  transform: rotateX(-90deg) translateY(-160px) translateZ(240px);
}
.b7 .block-inner > div.front::before, .b7 .block-inner > div.back::before, .b7 .block-inner > div.left::before, .b7 .block-inner > div.right::before {
  background-color: #FFE4C4;
  content: "";
  width: 100%;
  height: 100%;
}
.b7 .block-inner > div.front, .b7 .block-inner > div.back {
  width: 32px;
  height: 240px;
}
.b7 .block-inner > div.front::before, .b7 .block-inner > div.back::before {
  opacity: 0.2;
}
.b7 .block-inner > div.front {
  transform: translateZ(160px);
}
.b7 .block-inner > div.left, .b7 .block-inner > div.right {
  width: 176px;
  height: 240px;
}
.b7 .block-inner > div.left::before, .b7 .block-inner > div.right::before {
  opacity: 0;
}
.b7 .block-inner > div.right {
  transform: rotateY(-270deg) translate3d(16px, 0, -144px);
  transform-style: preserve-3d;
  background-color: #FFE4C4;
}
.b7 .block-inner > div.right::after {
  background-color: #891a21;
  content: attr(data-title);
}
.b7 .block-inner > div.top, .b7 .block-inner > div.back, .b7 .block-inner > div.bottom {
  background-color: #FFE4C4;
  background-image: repeating-linear-gradient(90deg, transparent, transparent 21%, #aaa 21%, #aaa 25%, transparent 25%, transparent 46%, #aaa 46%, #aaa 50%, transparent 50%);
  background-size: 16px 16px;
}

.b8 {
  display: block;
  transform: translate3d(80px, -192px, 272px);
}
.b8 .block-inner > div {
  background-color: #bf3e22;
}
.b8 .block-inner > div.top, .b8 .block-inner > div.bottom {
  width: 32px;
  height: 160px;
}
.b8 .block-inner > div.top {
  transform: rotateX(-90deg) translateY(-144px);
}
.b8 .block-inner > div.bottom {
  transform: rotateX(-90deg) translateY(-144px) translateZ(256px);
}
.b8 .block-inner > div.front::before, .b8 .block-inner > div.back::before, .b8 .block-inner > div.left::before, .b8 .block-inner > div.right::before {
  background-color: #FFE4C4;
  content: "";
  width: 100%;
  height: 100%;
}
.b8 .block-inner > div.front, .b8 .block-inner > div.back {
  width: 32px;
  height: 256px;
}
.b8 .block-inner > div.front::before, .b8 .block-inner > div.back::before {
  opacity: 0.2;
}
.b8 .block-inner > div.front {
  transform: translateZ(144px);
}
.b8 .block-inner > div.left, .b8 .block-inner > div.right {
  width: 160px;
  height: 256px;
}
.b8 .block-inner > div.left::before, .b8 .block-inner > div.right::before {
  opacity: 0;
}
.b8 .block-inner > div.right {
  transform: rotateY(-270deg) translate3d(16px, 0, -128px);
  transform-style: preserve-3d;
  background-color: #FFE4C4;
}
.b8 .block-inner > div.right::after {
  background-color: #bf3e22;
  content: attr(data-title);
}
.b8 .block-inner > div.top, .b8 .block-inner > div.back, .b8 .block-inner > div.bottom {
  background-color: #FFE4C4;
  background-image: repeating-linear-gradient(90deg, transparent, transparent 21%, #aaa 21%, #aaa 25%, transparent 25%, transparent 46%, #aaa 46%, #aaa 50%, transparent 50%);
  background-size: 16px 16px;
}

.b9 {
  display: block;
  transform: translate3d(112px, -192px, 240px);
}
.b9 .block-inner > div {
  background-color: #0e4326;
}
.b9 .block-inner > div.top, .b9 .block-inner > div.bottom {
  width: 32px;
  height: 160px;
}
.b9 .block-inner > div.top {
  transform: rotateX(-90deg) translateY(-144px);
}
.b9 .block-inner > div.bottom {
  transform: rotateX(-90deg) translateY(-144px) translateZ(224px);
}
.b9 .block-inner > div.front::before, .b9 .block-inner > div.back::before, .b9 .block-inner > div.left::before, .b9 .block-inner > div.right::before {
  background-color: #FFE4C4;
  content: "";
  width: 100%;
  height: 100%;
}
.b9 .block-inner > div.front, .b9 .block-inner > div.back {
  width: 32px;
  height: 224px;
}
.b9 .block-inner > div.front::before, .b9 .block-inner > div.back::before {
  opacity: 0.2;
}
.b9 .block-inner > div.front {
  transform: translateZ(144px);
}
.b9 .block-inner > div.left, .b9 .block-inner > div.right {
  width: 160px;
  height: 224px;
}
.b9 .block-inner > div.left::before, .b9 .block-inner > div.right::before {
  opacity: 0;
}
.b9 .block-inner > div.right {
  transform: rotateY(-270deg) translate3d(16px, 0, -128px);
  transform-style: preserve-3d;
  background-color: #FFE4C4;
}
.b9 .block-inner > div.right::after {
  background-color: #0e4326;
  content: attr(data-title);
}
.b9 .block-inner > div.top, .b9 .block-inner > div.back, .b9 .block-inner > div.bottom {
  background-color: #FFE4C4;
  background-image: repeating-linear-gradient(90deg, transparent, transparent 21%, #aaa 21%, #aaa 25%, transparent 25%, transparent 46%, #aaa 46%, #aaa 50%, transparent 50%);
  background-size: 16px 16px;
}

.b10 {
  display: block;
  transform: translate3d(144px, -208px, 256px);
}
.b10 .block-inner > div {
  background-color: #0066cc;
}
.b10 .block-inner > div.top, .b10 .block-inner > div.bottom {
  width: 32px;
  height: 176px;
}
.b10 .block-inner > div.top {
  transform: rotateX(-90deg) translateY(-160px);
}
.b10 .block-inner > div.bottom {
  transform: rotateX(-90deg) translateY(-160px) translateZ(240px);
}
.b10 .block-inner > div.front::before, .b10 .block-inner > div.back::before, .b10 .block-inner > div.left::before, .b10 .block-inner > div.right::before {
  background-color: #FFE4C4;
  content: "";
  width: 100%;
  height: 100%;
}
.b10 .block-inner > div.front, .b10 .block-inner > div.back {
  width: 32px;
  height: 240px;
}
.b10 .block-inner > div.front::before, .b10 .block-inner > div.back::before {
  opacity: 0.2;
}
.b10 .block-inner > div.front {
  transform: translateZ(160px);
}
.b10 .block-inner > div.left, .b10 .block-inner > div.right {
  width: 176px;
  height: 240px;
}
.b10 .block-inner > div.left::before, .b10 .block-inner > div.right::before {
  opacity: 0;
}
.b10 .block-inner > div.right {
  transform: rotateY(-270deg) translate3d(16px, 0, -144px);
  transform-style: preserve-3d;
  background-color: #FFE4C4;
}
.b10 .block-inner > div.right::after {
  background-color: #0066cc;
  content: attr(data-title);
}
.b10 .block-inner > div.top, .b10 .block-inner > div.back, .b10 .block-inner > div.bottom {
  background-color: #FFE4C4;
  background-image: repeating-linear-gradient(90deg, transparent, transparent 21%, #aaa 21%, #aaa 25%, transparent 25%, transparent 46%, #aaa 46%, #aaa 50%, transparent 50%);
  background-size: 16px 16px;
}

.b11 {
  display: block;
  transform: translate3d(176px, -208px, 272px);
}
.b11 .block-inner > div {
  background-color: #0f7b7e;
}
.b11 .block-inner > div.top, .b11 .block-inner > div.bottom {
  width: 32px;
  height: 176px;
}
.b11 .block-inner > div.top {
  transform: rotateX(-90deg) translateY(-160px);
}
.b11 .block-inner > div.bottom {
  transform: rotateX(-90deg) translateY(-160px) translateZ(256px);
}
.b11 .block-inner > div.front::before, .b11 .block-inner > div.back::before, .b11 .block-inner > div.left::before, .b11 .block-inner > div.right::before {
  background-color: #FFE4C4;
  content: "";
  width: 100%;
  height: 100%;
}
.b11 .block-inner > div.front, .b11 .block-inner > div.back {
  width: 32px;
  height: 256px;
}
.b11 .block-inner > div.front::before, .b11 .block-inner > div.back::before {
  opacity: 0.2;
}
.b11 .block-inner > div.front {
  transform: translateZ(160px);
}
.b11 .block-inner > div.left, .b11 .block-inner > div.right {
  width: 176px;
  height: 256px;
}
.b11 .block-inner > div.left::before, .b11 .block-inner > div.right::before {
  opacity: 0;
}
.b11 .block-inner > div.right {
  transform: rotateY(-270deg) translate3d(16px, 0, -144px);
  transform-style: preserve-3d;
  background-color: #fff;
}
.b11 .block-inner > div.right::after {
  background-color: #0f7b7e;
  content: attr(data-title);
}
.b11 .block-inner > div.top, .b11 .block-inner > div.back, .b11 .block-inner > div.bottom {
  background-color: #fff;
  background-image: repeating-linear-gradient(90deg, transparent, transparent 21%, #aaa 21%, #aaa 25%, transparent 25%, transparent 46%, #aaa 46%, #aaa 50%, transparent 50%);
  background-size: 16px 16px;
}

.b12 {
  display: block;
  transform: translate3d(208px, -192px, 256px);
}
.b12 .block-inner > div {
  background-color: #084e6f;
}
.b12 .block-inner > div.top, .b12 .block-inner > div.bottom {
  width: 32px;
  height: 160px;
}
.b12 .block-inner > div.top {
  transform: rotateX(-90deg) translateY(-144px);
}
.b12 .block-inner > div.bottom {
  transform: rotateX(-90deg) translateY(-144px) translateZ(240px);
}
.b12 .block-inner > div.front::before, .b12 .block-inner > div.back::before, .b12 .block-inner > div.left::before, .b12 .block-inner > div.right::before {
  background-color: #FFE4C4;
  content: "";
  width: 100%;
  height: 100%;
}
.b12 .block-inner > div.front, .b12 .block-inner > div.back {
  width: 32px;
  height: 240px;
}
.b12 .block-inner > div.front::before, .b12 .block-inner > div.back::before {
  opacity: 0.2;
}
.b12 .block-inner > div.front {
  transform: translateZ(144px);
}
.b12 .block-inner > div.left, .b12 .block-inner > div.right {
  width: 160px;
  height: 240px;
}
.b12 .block-inner > div.left::before, .b12 .block-inner > div.right::before {
  opacity: 0;
}
.b12 .block-inner > div.right {
  transform: rotateY(-270deg) translate3d(16px, 0, -128px);
  transform-style: preserve-3d;
  background-color: #FFE4C4;
}
.b12 .block-inner > div.right::after {
  background-color: #084e6f;
  content: attr(data-title);
}
.b12 .block-inner > div.top, .b12 .block-inner > div.back, .b12 .block-inner > div.bottom {
  background-color: #FFE4C4;
  background-image: repeating-linear-gradient(90deg, transparent, transparent 21%, #aaa 21%, #aaa 25%, transparent 25%, transparent 46%, #aaa 46%, #aaa 50%, transparent 50%);
  background-size: 16px 16px;
}

.b13 {
  display: block;
  transform: translate3d(240px, -208px, 272px);
}
.b13 .block-inner > div {
  background-color: #0b0823;
}
.b13 .block-inner > div.top, .b13 .block-inner > div.bottom {
  width: 32px;
  height: 176px;
}
.b13 .block-inner > div.top {
  transform: rotateX(-90deg) translateY(-160px);
}
.b13 .block-inner > div.bottom {
  transform: rotateX(-90deg) translateY(-160px) translateZ(256px);
}
.b13 .block-inner > div.front::before, .b13 .block-inner > div.back::before, .b13 .block-inner > div.left::before, .b13 .block-inner > div.right::before {
  background-color: #FFE4C4;
  content: "";
  width: 100%;
  height: 100%;
}
.b13 .block-inner > div.front, .b13 .block-inner > div.back {
  width: 32px;
  height: 256px;
}
.b13 .block-inner > div.front::before, .b13 .block-inner > div.back::before {
  opacity: 0.2;
}
.b13 .block-inner > div.front {
  transform: translateZ(160px);
}
.b13 .block-inner > div.left, .b13 .block-inner > div.right {
  width: 176px;
  height: 256px;
}
.b13 .block-inner > div.left::before, .b13 .block-inner > div.right::before {
  opacity: 0;
}
.b13 .block-inner > div.right {
  transform: rotateY(-270deg) translate3d(16px, 0, -144px);
  transform-style: preserve-3d;
  background-color: #FFE4C4;
}
.b13 .block-inner > div.right::after {
  background-color: #0b0823;
  content: attr(data-title);
}
.b13 .block-inner > div.top, .b13 .block-inner > div.back, .b13 .block-inner > div.bottom {
  background-color: #FFE4C4;
  background-image: repeating-linear-gradient(90deg, transparent, transparent 21%, #aaa 21%, #aaa 25%, transparent 25%, transparent 46%, #aaa 46%, #aaa 50%, transparent 50%);
  background-size: 16px 16px;
}

.b14 {
  display: block;
  transform: translate3d(272px, -192px, 240px);
}
.b14 .block-inner > div {
  background-color: #38103d;
}
.b14 .block-inner > div.top, .b14 .block-inner > div.bottom {
  width: 32px;
  height: 160px;
}
.b14 .block-inner > div.top {
  transform: rotateX(-90deg) translateY(-144px);
}
.b14 .block-inner > div.bottom {
  transform: rotateX(-90deg) translateY(-144px) translateZ(224px);
}
.b14 .block-inner > div.front::before, .b14 .block-inner > div.back::before, .b14 .block-inner > div.left::before, .b14 .block-inner > div.right::before {
  background-color: #FFE4C4;
  content: "";
  width: 100%;
  height: 100%;
}
.b14 .block-inner > div.front, .b14 .block-inner > div.back {
  width: 32px;
  height: 224px;
}
.b14 .block-inner > div.front::before, .b14 .block-inner > div.back::before {
  opacity: 0.2;
}
.b14 .block-inner > div.front {
  transform: translateZ(144px);
}
.b14 .block-inner > div.left, .b14 .block-inner > div.right {
  width: 160px;
  height: 224px;
}
.b14 .block-inner > div.left::before, .b14 .block-inner > div.right::before {
  opacity: 0;
}
.b14 .block-inner > div.right {
  transform: rotateY(-270deg) translate3d(16px, 0, -128px);
  transform-style: preserve-3d;
  background-color: #FFE4C4;
}
.b14 .block-inner > div.right::after {
  background-color: #38103d;
  content: attr(data-title);
}
.b14 .block-inner > div.top, .b14 .block-inner > div.back, .b14 .block-inner > div.bottom {
  background-color: #FFE4C4;
  background-image: repeating-linear-gradient(90deg, transparent, transparent 21%, #aaa 21%, #aaa 25%, transparent 25%, transparent 46%, #aaa 46%, #aaa 50%, transparent 50%);
  background-size: 16px 16px;
}

.b15 {
  display: block;
  transform: translate3d(304px, -192px, 256px);
}
.b15 .block-inner > div {
  background-color: #443344;
}
.b15 .block-inner > div.top, .b15 .block-inner > div.bottom {
  width: 32px;
  height: 160px;
}
.b15 .block-inner > div.top {
  transform: rotateX(-90deg) translateY(-144px);
}
.b15 .block-inner > div.bottom {
  transform: rotateX(-90deg) translateY(-144px) translateZ(240px);
}
.b15 .block-inner > div.front::before, .b15 .block-inner > div.back::before, .b15 .block-inner > div.left::before, .b15 .block-inner > div.right::before {
  background-color: #FFE4C4;
  content: "";
  width: 100%;
  height: 100%;
}
.b15 .block-inner > div.front, .b15 .block-inner > div.back {
  width: 32px;
  height: 240px;
}
.b15 .block-inner > div.front::before, .b15 .block-inner > div.back::before {
  opacity: 0.2;
}
.b15 .block-inner > div.front {
  transform: translateZ(144px);
}
.b15 .block-inner > div.left, .b15 .block-inner > div.right {
  width: 160px;
  height: 240px;
}
.b15 .block-inner > div.left::before, .b15 .block-inner > div.right::before {
  opacity: 0;
}
.b15 .block-inner > div.right {
  transform: rotateY(-270deg) translate3d(16px, 0, -128px);
  transform-style: preserve-3d;
  background-color: #fff;
}
.b15 .block-inner > div.right::after {
  background-color: #443344;
  content: attr(data-title);
}
.b15 .block-inner > div.top, .b15 .block-inner > div.back, .b15 .block-inner > div.bottom {
  background-color: #fff;
  background-image: repeating-linear-gradient(90deg, transparent, transparent 21%, #aaa 21%, #aaa 25%, transparent 25%, transparent 46%, #aaa 46%, #aaa 50%, transparent 50%);
  background-size: 16px 16px;
}

.b16 {
  display: block;
  transform: translate3d(336px, -192px, 272px);
}
.b16 .block-inner > div {
  background-color: #666777;
}
.b16 .block-inner > div.top, .b16 .block-inner > div.bottom {
  width: 32px;
  height: 160px;
}
.b16 .block-inner > div.top {
  transform: rotateX(-90deg) translateY(-144px);
}
.b16 .block-inner > div.bottom {
  transform: rotateX(-90deg) translateY(-144px) translateZ(256px);
}
.b16 .block-inner > div.front::before, .b16 .block-inner > div.back::before, .b16 .block-inner > div.left::before, .b16 .block-inner > div.right::before {
  background-color: #FFE4C4;
  content: "";
  width: 100%;
  height: 100%;
}
.b16 .block-inner > div.front, .b16 .block-inner > div.back {
  width: 32px;
  height: 256px;
}
.b16 .block-inner > div.front::before, .b16 .block-inner > div.back::before {
  opacity: 0.2;
}
.b16 .block-inner > div.front {
  transform: translateZ(144px);
}
.b16 .block-inner > div.left, .b16 .block-inner > div.right {
  width: 160px;
  height: 256px;
}
.b16 .block-inner > div.left::before, .b16 .block-inner > div.right::before {
  opacity: 0;
}
.b16 .block-inner > div.right {
  transform: rotateY(-270deg) translate3d(16px, 0, -128px);
  transform-style: preserve-3d;
  background-color: #FFE4C4;
}
.b16 .block-inner > div.right::after {
  background-color: #666777;
  content: attr(data-title);
}
.b16 .block-inner > div.top, .b16 .block-inner > div.back, .b16 .block-inner > div.bottom {
  background-color: #FFE4C4;
  background-image: repeating-linear-gradient(90deg, transparent, transparent 21%, #aaa 21%, #aaa 25%, transparent 25%, transparent 46%, #aaa 46%, #aaa 50%, transparent 50%);
  background-size: 16px 16px;
}

/* Book Viewing */
label:nth-child(n+6):nth-child(-n+17):hover .block-inner {
  transform: rotateX(-90deg) translateZ(64px);
}

input[type=radio]:nth-child(1) ~ .surface label:nth-child(6) .block-inner {
  animation: returnBook 0.25s linear;
}

input[type=radio]:nth-child(1):checked ~ .surface {
  transform: translate(41.66667%, 152px) rotateX(80deg) rotateZ(0deg);
}
input[type=radio]:nth-child(1):checked ~ .surface label:nth-child(6) .block-inner {
  animation: viewBook 0.25s 0.25s linear forwards;
}
input[type=radio]:nth-child(1):checked ~ .surface label:nth-child(6) .block-inner:hover .right::after, input[type=radio]:nth-child(1):checked ~ .surface label:nth-child(6) .block-inner:hover .cover {
  transform: rotateY(-135deg);
}

input[type=radio]:nth-child(2) ~ .surface label:nth-child(7) .block-inner {
  animation: returnBook 0.25s linear;
}

input[type=radio]:nth-child(2):checked ~ .surface {
  transform: translate(33.33333%, 152px) rotateX(80deg) rotateZ(0deg);
}
input[type=radio]:nth-child(2):checked ~ .surface label:nth-child(7) .block-inner {
  animation: viewBook 0.25s 0.25s linear forwards;
}
input[type=radio]:nth-child(2):checked ~ .surface label:nth-child(7) .block-inner:hover .right::after, input[type=radio]:nth-child(2):checked ~ .surface label:nth-child(7) .block-inner:hover .cover {
  transform: rotateY(-135deg);
}

input[type=radio]:nth-child(3) ~ .surface label:nth-child(8) .block-inner {
  animation: returnBook 0.25s linear;
}

input[type=radio]:nth-child(3):checked ~ .surface {
  transform: translate(25%, 152px) rotateX(80deg) rotateZ(0deg);
}
input[type=radio]:nth-child(3):checked ~ .surface label:nth-child(8) .block-inner {
  animation: viewBook 0.25s 0.25s linear forwards;
}
input[type=radio]:nth-child(3):checked ~ .surface label:nth-child(8) .block-inner:hover .right::after, input[type=radio]:nth-child(3):checked ~ .surface label:nth-child(8) .block-inner:hover .cover {
  transform: rotateY(-135deg);
}

input[type=radio]:nth-child(4) ~ .surface label:nth-child(9) .block-inner {
  animation: returnBook 0.25s linear;
}

input[type=radio]:nth-child(4):checked ~ .surface {
  transform: translate(16.66667%, 152px) rotateX(80deg) rotateZ(0deg);
}
input[type=radio]:nth-child(4):checked ~ .surface label:nth-child(9) .block-inner {
  animation: viewBook 0.25s 0.25s linear forwards;
}
input[type=radio]:nth-child(4):checked ~ .surface label:nth-child(9) .block-inner:hover .right::after, input[type=radio]:nth-child(4):checked ~ .surface label:nth-child(9) .block-inner:hover .cover {
  transform: rotateY(-135deg);
}

input[type=radio]:nth-child(5) ~ .surface label:nth-child(10) .block-inner {
  animation: returnBook 0.25s linear;
}

input[type=radio]:nth-child(5):checked ~ .surface {
  transform: translate(8.33333%, 152px) rotateX(80deg) rotateZ(0deg);
}
input[type=radio]:nth-child(5):checked ~ .surface label:nth-child(10) .block-inner {
  animation: viewBook 0.25s 0.25s linear forwards;
}
input[type=radio]:nth-child(5):checked ~ .surface label:nth-child(10) .block-inner:hover .right::after, input[type=radio]:nth-child(5):checked ~ .surface label:nth-child(10) .block-inner:hover .cover {
  transform: rotateY(-135deg);
}

input[type=radio]:nth-child(6) ~ .surface label:nth-child(11) .block-inner {
  animation: returnBook 0.25s linear;
}

input[type=radio]:nth-child(6):checked ~ .surface {
  transform: translate(0%, 152px) rotateX(80deg) rotateZ(0deg);
}
input[type=radio]:nth-child(6):checked ~ .surface label:nth-child(11) .block-inner {
  animation: viewBook 0.25s 0.25s linear forwards;
}
input[type=radio]:nth-child(6):checked ~ .surface label:nth-child(11) .block-inner:hover .right::after, input[type=radio]:nth-child(6):checked ~ .surface label:nth-child(11) .block-inner:hover .cover {
  transform: rotateY(-135deg);
}

input[type=radio]:nth-child(7) ~ .surface label:nth-child(12) .block-inner {
  animation: returnBook 0.25s linear;
}

input[type=radio]:nth-child(7):checked ~ .surface {
  transform: translate(-8.33333%, 152px) rotateX(80deg) rotateZ(0deg);
}
input[type=radio]:nth-child(7):checked ~ .surface label:nth-child(12) .block-inner {
  animation: viewBook 0.25s 0.25s linear forwards;
}
input[type=radio]:nth-child(7):checked ~ .surface label:nth-child(12) .block-inner:hover .right::after, input[type=radio]:nth-child(7):checked ~ .surface label:nth-child(12) .block-inner:hover .cover {
  transform: rotateY(-135deg);
}

input[type=radio]:nth-child(8) ~ .surface label:nth-child(13) .block-inner {
  animation: returnBook 0.25s linear;
}

input[type=radio]:nth-child(8):checked ~ .surface {
  transform: translate(-16.66667%, 152px) rotateX(80deg) rotateZ(0deg);
}
input[type=radio]:nth-child(8):checked ~ .surface label:nth-child(13) .block-inner {
  animation: viewBook 0.25s 0.25s linear forwards;
}
input[type=radio]:nth-child(8):checked ~ .surface label:nth-child(13) .block-inner:hover .right::after, input[type=radio]:nth-child(8):checked ~ .surface label:nth-child(13) .block-inner:hover .cover {
  transform: rotateY(-135deg);
}

input[type=radio]:nth-child(9) ~ .surface label:nth-child(14) .block-inner {
  animation: returnBook 0.25s linear;
}

input[type=radio]:nth-child(9):checked ~ .surface {
  transform: translate(-25%, 152px) rotateX(80deg) rotateZ(0deg);
}
input[type=radio]:nth-child(9):checked ~ .surface label:nth-child(14) .block-inner {
  animation: viewBook 0.25s 0.25s linear forwards;
}
input[type=radio]:nth-child(9):checked ~ .surface label:nth-child(14) .block-inner:hover .right::after, input[type=radio]:nth-child(9):checked ~ .surface label:nth-child(14) .block-inner:hover .cover {
  transform: rotateY(-135deg);
}

input[type=radio]:nth-child(10) ~ .surface label:nth-child(15) .block-inner {
  animation: returnBook 0.25s linear;
}

input[type=radio]:nth-child(10):checked ~ .surface {
  transform: translate(-33.33333%, 152px) rotateX(80deg) rotateZ(0deg);
}
input[type=radio]:nth-child(10):checked ~ .surface label:nth-child(15) .block-inner {
  animation: viewBook 0.25s 0.25s linear forwards;
}
input[type=radio]:nth-child(10):checked ~ .surface label:nth-child(15) .block-inner:hover .right::after, input[type=radio]:nth-child(10):checked ~ .surface label:nth-child(15) .block-inner:hover .cover {
  transform: rotateY(-135deg);
}

input[type=radio]:nth-child(11) ~ .surface label:nth-child(16) .block-inner {
  animation: returnBook 0.25s linear;
}

input[type=radio]:nth-child(11):checked ~ .surface {
  transform: translate(-41.66667%, 152px) rotateX(80deg) rotateZ(0deg);
}
input[type=radio]:nth-child(11):checked ~ .surface label:nth-child(16) .block-inner {
  animation: viewBook 0.25s 0.25s linear forwards;
}
input[type=radio]:nth-child(11):checked ~ .surface label:nth-child(16) .block-inner:hover .right::after, input[type=radio]:nth-child(11):checked ~ .surface label:nth-child(16) .block-inner:hover .cover {
  transform: rotateY(-135deg);
}

@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
@keyframes viewBook {
  from {
    transform: rotateX(-90deg) translateZ(64px) rotateY(0);
  }
  50% {
    transform: rotateX(-90deg) translateZ(240px) rotateY(0);
  }
  to {
    transform: rotateX(-90deg) translateZ(240px) rotateY(-90deg) rotateZ(-10deg) translateZ(-80px);
  }
}
@keyframes returnBook {
  from {
    transform: rotateX(-90deg) translateZ(240px) rotateY(-90deg) rotateZ(-10deg) translateZ(-80px);
  }
  50% {
    transform: rotateX(-90deg) translateZ(240px) rotateY(0);
  }
  to {
    transform: rotateX(-90deg) translateZ(16px) rotateY(0);
  }
}

</style>
</head>
<body>

<form class="container">
  <input type="radio" name="title" id="book1"/>
  <input type="radio" name="title" id="book2"/>
  <input type="radio" name="title" id="book3"/>
  <input type="radio" name="title" id="book4"/>
  <input type="radio" name="title" id="book5"/>
  <input type="radio" name="title" id="book6"/>
  <input type="radio" name="title" id="book7"/>
  <input type="radio" name="title" id="book8"/>
  <input type="radio" name="title" id="book9"/>
  <input type="radio" name="title" id="book10"/>
  <input type="radio" name="title" id="book11"/>
  <div class="surface">
    <div class="block b1">
      <div class="block-inner">
        <div class="back"></div>
        <div class="bottom"></div>
        <div class="front"></div>
        <div class="left"></div>
        <div class="right"></div>
        <div class="top"></div>
      </div>
    </div>
    <div class="block b2">
      <div class="block-inner">
        <div class="back"></div>
        <div class="bottom"></div>
        <div class="front"></div>
        <div class="left"></div>
        <div class="right"></div>
        <div class="top"></div>
      </div>
    </div>
    <div class="block b3">
      <div class="block-inner">
        <div class="back"></div>
        <div class="bottom"></div>
        <div class="front"></div>
        <div class="left"></div>
        <div class="right"></div>
        <div class="top"></div>
      </div>
    </div>
    <div class="block b4">
      <div class="block-inner">
        <div class="back"></div>
        <div class="bottom"></div>
        <div class="front"></div>
        <div class="left"></div>
        <div class="right"></div>
        <div class="top"></div>
      </div>
    </div>
    <div class="block b5">
      <div class="block-inner">
        <div class="back"></div>
        <div class="bottom"></div>
        <div class="front"></div>
        <div class="left"></div>
        <div class="right"></div>
        <div class="top"></div>
      </div>
    </div>
    <label class="block b6" for="book1">
      <div class="block-inner">
        <div class="back"></div>
        <div class="bottom"></div>
        <div class="front">
          <div class="spine">Enid Blyton</div>
        </div>
        <div class="left"></div>
        <div class="right" data-title="Enid Blyton">
        
          <div class="cover"></div>
          <div class="contents">
           <!-- <h1>CHILDREN</h1> -->
           <font face="Verdana" size="2">  CHILDREN</font>
           
         <p><img src="resources/EB.jpg" style="width:160px;height:191px;"></p>
          </div>
        </div>
        <div class="top"></div>
      </div>
    </label>
    <label class="block b7" for="book2">
      <div class="block-inner">
        <div class="back"></div>
        <div class="bottom"></div>
        <div class="front">
          <div class="spine">TIME</div>
        </div>
        <div class="left"></div>
        <div class="right" data-title="TIME">
          <div class="cover"></div>
          <div class="contents">
             <font face="Verdana" size="2">MAGAZINES</font>
             <p><img src="resources/Mag.png" style="width:160px;height:207px;"></p>
          </div>
        </div>
        <div class="top"></div>
      </div>
    </label>
    <label class="block b8" for="book3">
      <div class="block-inner">
        <div class="back"></div>
        <div class="bottom"></div>
        <div class="front">
          <div class="spine">THE DAVINCI CODE</div>
        </div>
        <div class="left"></div>
        <div class="right" data-title="THE DAVINCI CODE">
          <div class="cover"></div>
          <div class="contents">
            <font face="Verdana" size="2">NOVELS</font>
            <p><img src="resources/Davi.jpg" style="width:140px;height:223px;"></p>
          </div>
        </div>
        <div class="top"></div>
      </div>
    </label>
    <label class="block b9" for="book4">
      <div class="block-inner">
        <div class="back"></div>
        <div class="bottom"></div>
        <div class="front">
          <div class="spine">Twilight</div>
        </div>
        <div class="left"></div>
        <div class="right" data-title="Twilight">
          <div class="cover"></div>
          <div class="contents">
          <font face="Verdana" size="2">TEENAGERS</font>
        <p><img src="resources/tw.jpg" style="width:144px;height:192px;"></p>     
          </div>
        </div>
        <div class="top"></div>
      </div>
    </label>
    <label class="block b10" for="book5">
      <div class="block-inner">
        <div class="back"></div>
        <div class="bottom"></div>
        <div class="front">
          <div class="spine">MARVEL</div>
        </div>
        <div class="left"></div>
        <div class="right" data-title="MARVEL">
          <div class="cover"></div>
          <div class="contents">
            <font face="Verdana" size="2">COMICS</font>
        <p><img src="resources/cm.jpg" style="width:155px;height:202px;"></p>   
          </div>
        </div>
        <div class="top"></div>
      </div>
    </label>
    <label class="block b11" for="book6">
      <div class="block-inner">
        <div class="back"></div>
        <div class="bottom"></div>
        <div class="front">
          <div class="spine">Data Structures and Algorithms</div>
        </div>
        <div class="left"></div>
        <div class="right" data-title="Data Structures and Algorithms">
          <div class="cover"></div>
          <div class="contents">
            <h1>Algorithms</h1>
<p>Informally, an algorithm is any well-defined computational procedure that takes
some value, or set of values, as input and produces some value, or set of values, as
output. An algorithm is thus a sequence of computational steps that transform the
input into the output.
</p>
       </div>
        </div>
        <div class="top"></div>
      </div>
    </label>
    <label class="block b12" for="book7">
      <div class="block-inner">
        <div class="back"></div>
        <div class="bottom"></div>
        <div class="front">
          <div class="spine">Data Mining</div>
        </div>
        <div class="left"></div>
        <div class="right" data-title="Data Mining">
          <div class="cover"></div>
          <div class="contents">
            <h1>Relational Databases </h1>
            <p>A database system, also called database management system (DBMS), consists of a collection of interrelated
data, known as a database, and a set of software programs to manage and access data. 

            </p>
          </div>
        </div>
        <div class="top"></div>
      </div>
    </label>
    <label class="block b13" for="book8">
      <div class="block-inner">
        <div class="back"></div>
        <div class="bottom"></div>
        <div class="front">
          <div class="spine">CCNP</div>
        </div>
        <div class="left"></div>
        <div class="right" data-title=CCNP>
          <div class="cover"></div>
          <div class="contents">
            <h1>Benefits of Virtual LANS </h1>
            <p>Remember that layer 2 switches break up collision domains and that
only routers can break up broadcast domains. However, virtual LANs can
be used to break up broadcast domains in layer 2 switched networks. Routers
are still needed in a layer 2 virtual LAN switched internetwork to allow
the different VLANs  </p>
          </div>
        </div>
        <div class="top"></div>
      </div>
    </label>
    <label class="block b14" for="book9">
      <div class="block-inner">
        <div class="back"></div>
        <div class="bottom"></div>
        <div class="front">
          <div class="spine">Copypaste Customer Support</div>
        </div>
        <div class="left"></div>
        <div class="right" data-title="Copypaste Customer Support">
          <div class="cover"></div>
          <div class="contents">
            <h1>Chapter 1</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
          </div>
        </div>
        <div class="top"></div>
      </div>
    </label>
    <label class="block b15" for="book10">
      <div class="block-inner">
        <div class="back"></div>
        <div class="bottom"></div>
        <div class="front">
          <div class="spine">Catchy Clickbait Titles and Buzzwords</div>
        </div>
        <div class="left"></div>
        <div class="right" data-title="Catchy Clickbait Titles and Buzzwords">
          <div class="cover"></div>
          <div class="contents">
            <h1>Chapter 1</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
          </div>
        </div>
        <div class="top"></div>
      </div>
    </label>
    <label class="block b16" for="book11">
      <div class="block-inner">
        <div class="back"></div>
        <div class="bottom"></div>
        <div class="front">
          <div class="spine">Spamming with Scrapebox</div>
        </div>
        <div class="left"></div>
        <div class="right" data-title="Spamming with Scrapebox">
          <div class="cover"></div>
          <div class="contents">
            <h1>Chapter 1</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
          </div>
        </div>
        <div class="top"></div>
      </div>
    </label>
  </div>
  <input type="reset" value="Read Another Book"/>
</form>

</body>
</html>
