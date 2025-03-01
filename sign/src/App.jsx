import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Navbar from './components/layout/Navbar';
import Footer from './components/layout/Footer';
import Hero from './components/home/Hero';
import Features from './components/home/Features';
import HowItWorks from './components/home/HowItWorks';
import Testimonials from './components/home/Testimonials';
import DownloadSection from './components/home/DownloadSection';
import TestFeature from './components/features/TestFeature';

function HomePage() {
  return (
    <>
      <Navbar />
      <Hero />
      <Features />
      <HowItWorks />
      <Testimonials />
      <DownloadSection />
      <Footer />
    </>
  );
}

function App() {
  return (
    <Router>
      <div className="min-h-screen bg-gradient-to-b from-white to-gray-50">
        <Routes>
          <Route path="/" element={<HomePage />} />
          <Route path="/test-feature" element={<TestFeature />} />
        </Routes>
      </div>
    </Router>
  );
}

export default App;